package im.actor.server.enrich

import scala.concurrent.ExecutionContextExecutor
import scala.util.{ Failure, Success, Try }

import akka.actor._
import akka.contrib.pattern.DistributedPubSubMediator
import akka.event.Logging
import akka.http.scaladsl.model.Uri
import akka.stream.FlowMaterializer
import com.sksamuel.scrimage.{ AsyncImage, Format }
import org.joda.time.DateTime
import slick.driver.PostgresDriver.api._

import im.actor.api.rpc.files.FastThumb
import im.actor.api.rpc.messaging._
import im.actor.server.api.rpc.service.messaging.Events
import im.actor.server.api.rpc.service.messaging.MessagingService._
import im.actor.server.util.{ AnyRefLogSource, ImageUtils, FileUtils, UploadManager }
import im.actor.server.push.SeqUpdatesManagerRegion

object RichMessageWorker {
  val groupId = Some("RichMessageWorker")

  def startWorker(config: RichMessageConfig, mediator: ActorRef)(
    implicit
    system:              ActorSystem,
    db:                  Database,
    seqUpdManagerRegion: SeqUpdatesManagerRegion,
    flowMaterializer:    FlowMaterializer,
    uploadManager:       UploadManager
  ): ActorRef = system.actorOf(Props(
    classOf[RichMessageWorker],
    config, mediator, db, seqUpdManagerRegion, flowMaterializer, uploadManager
  ))
}

class RichMessageWorker(config: RichMessageConfig, mediator: ActorRef)(
  implicit
  db:                  Database,
  seqUpdManagerRegion: SeqUpdatesManagerRegion,
  flowMaterializer:    FlowMaterializer,
  uploadManager:       UploadManager
) extends Actor with ActorLogging {

  import AnyRefLogSource._
  import PreviewMaker._
  import RichMessageWorker._

  implicit val system: ActorSystem = context.system
  implicit val ec: ExecutionContextExecutor = system.dispatcher

  override val log = Logging(system, this)

  val previewMaker = PreviewMaker(config, "previewMaker")

  import DistributedPubSubMediator.Subscribe

  mediator ! Subscribe(privateMessagesTopic, groupId, self)
  mediator ! Subscribe(groupMessagesTopic, groupId, self)

  def receive: Receive = {
    var privateAck = false
    var groupAck = false
    import DistributedPubSubMediator.{ Subscribe, SubscribeAck }

    {
      case SubscribeAck(Subscribe(`privateMessagesTopic`, `groupId`, `self`)) ⇒
        if (groupAck) context.become(ready) else privateAck = true
      case SubscribeAck(Subscribe(`groupMessagesTopic`, `groupId`, `self`)) ⇒
        if (privateAck) context.become(ready) else groupAck = true
    }
  }

  def ready: Receive = {
    log.debug("RichMessageWorker is ready to work")

    {
      case Events.PeerMessage(fromPeer, toPeer, randomId, _, message) ⇒
        message match {
          case TextMessage(text, _, _) ⇒
            Try(Uri(text.trim)) match {
              case Success(uri) ⇒
                log.debug("TextMessage with uri: {}", uri)
                previewMaker ! GetPreview(uri.toString(), UpdateHandler.getHandler(fromPeer, toPeer, randomId))
              case Failure(_) ⇒
            }
          case _ ⇒
        }
      case PreviewSuccess(imageBytes, optFileName, mimeType, handler) ⇒
        log.debug("PreviewSuccess for message with randomId: {}, fileName: {}, mimeType: {}", handler.randomId, optFileName, mimeType)
        val fullName = optFileName getOrElse {
          val name = (new DateTime).toString("yyyyMMddHHmmss")
          val ext = Try(mimeType.split("/").last).getOrElse("tmp")
          s"$name.$ext"
        }
        db.run {
          for {
            (file, fileSize) ← DBIO.from(FileUtils.writeBytes(imageBytes))
            location ← DBIO.from(uploadManager.uploadFile(fullName, file.toFile))
            image ← DBIO.from(AsyncImage(imageBytes.toArray))
            thumb ← DBIO.from(ImageUtils.scaleTo(image, 90))
            thumbBytes ← DBIO.from(thumb.writer(Format.JPEG).write())

            _ = log.debug("uploaded file to location {}", location)
            _ = log.debug("image with width: {}, height: {}", image.width, image.height)

            updated = DocumentMessage(
              fileId = location.fileId,
              accessHash = location.accessHash,
              fileSize = fileSize.toInt,
              name = fullName,
              mimeType = mimeType,
              thumb = Some(FastThumb(thumb.width, thumb.height, thumbBytes)),
              ext = Some(DocumentExPhoto(image.width, image.height))
            )
            _ ← handler.handleDbUpdate(updated)
            _ ← handler.handleUpdate(updated)
          } yield ()
        }
      case PreviewFailure(mess, handler) ⇒
        log.error("failed to make preview for message with randomId: {}, cause: {} ", handler.randomId, mess)
    }
  }

}
