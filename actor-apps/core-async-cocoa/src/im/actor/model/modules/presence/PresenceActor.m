//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/modules/presence/PresenceActor.java
//


#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/GroupOutPeer.h"
#include "im/actor/model/api/UserOutPeer.h"
#include "im/actor/model/api/rpc/RequestSubscribeToGroupOnline.h"
#include "im/actor/model/api/rpc/RequestSubscribeToOnline.h"
#include "im/actor/model/droidkit/actors/Actor.h"
#include "im/actor/model/droidkit/actors/ActorCreator.h"
#include "im/actor/model/droidkit/actors/ActorRef.h"
#include "im/actor/model/droidkit/actors/ActorSystem.h"
#include "im/actor/model/droidkit/actors/MailboxCreator.h"
#include "im/actor/model/droidkit/actors/Props.h"
#include "im/actor/model/droidkit/actors/mailbox/Envelope.h"
#include "im/actor/model/droidkit/actors/mailbox/Mailbox.h"
#include "im/actor/model/droidkit/actors/mailbox/MailboxesQueue.h"
#include "im/actor/model/entity/Group.h"
#include "im/actor/model/entity/Peer.h"
#include "im/actor/model/entity/PeerType.h"
#include "im/actor/model/entity/User.h"
#include "im/actor/model/modules/Modules.h"
#include "im/actor/model/modules/presence/PresenceActor.h"
#include "im/actor/model/modules/utils/ModuleActor.h"
#include "im/actor/model/mvvm/ValueModel.h"
#include "im/actor/model/mvvm/generics/UserPresenceValueModel.h"
#include "im/actor/model/viewmodel/GroupVM.h"
#include "im/actor/model/viewmodel/UserPresence.h"
#include "im/actor/model/viewmodel/UserVM.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/util/ArrayList.h"
#include "java/util/HashMap.h"
#include "java/util/HashSet.h"
#include "java/util/List.h"

#define ImActorModelModulesPresencePresenceActor_ONLINE_TIMEOUT 300000

@interface ImActorModelModulesPresencePresenceActor () {
 @public
  JavaUtilHashMap *lastUidState_;
  JavaUtilHashMap *lastGidState_;
  JavaUtilHashSet *uids_;
  JavaUtilHashSet *gids_;
}

- (void)onUserOnlineWithInt:(jint)uid
                   withLong:(jlong)updateDate;

- (void)onUserOfflineWithInt:(jint)uid
                    withLong:(jlong)updateDate;

- (void)onUserLastSeenWithInt:(jint)uid
                     withLong:(jlong)date
                     withLong:(jlong)updateDate;

- (void)onGroupOnlineWithInt:(jint)gid
                     withInt:(jint)count
                    withLong:(jlong)updateDate;

- (void)subscribeWithAMPeer:(AMPeer *)peer;

- (void)onNewSessionCreated;

@end

J2OBJC_FIELD_SETTER(ImActorModelModulesPresencePresenceActor, lastUidState_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(ImActorModelModulesPresencePresenceActor, lastGidState_, JavaUtilHashMap *)
J2OBJC_FIELD_SETTER(ImActorModelModulesPresencePresenceActor, uids_, JavaUtilHashSet *)
J2OBJC_FIELD_SETTER(ImActorModelModulesPresencePresenceActor, gids_, JavaUtilHashSet *)

J2OBJC_STATIC_FIELD_GETTER(ImActorModelModulesPresencePresenceActor, ONLINE_TIMEOUT, jint)

__attribute__((unused)) static void ImActorModelModulesPresencePresenceActor_onUserOnlineWithInt_withLong_(ImActorModelModulesPresencePresenceActor *self, jint uid, jlong updateDate);

__attribute__((unused)) static void ImActorModelModulesPresencePresenceActor_onUserOfflineWithInt_withLong_(ImActorModelModulesPresencePresenceActor *self, jint uid, jlong updateDate);

__attribute__((unused)) static void ImActorModelModulesPresencePresenceActor_onUserLastSeenWithInt_withLong_withLong_(ImActorModelModulesPresencePresenceActor *self, jint uid, jlong date, jlong updateDate);

__attribute__((unused)) static void ImActorModelModulesPresencePresenceActor_onGroupOnlineWithInt_withInt_withLong_(ImActorModelModulesPresencePresenceActor *self, jint gid, jint count, jlong updateDate);

__attribute__((unused)) static void ImActorModelModulesPresencePresenceActor_subscribeWithAMPeer_(ImActorModelModulesPresencePresenceActor *self, AMPeer *peer);

__attribute__((unused)) static void ImActorModelModulesPresencePresenceActor_onNewSessionCreated(ImActorModelModulesPresencePresenceActor *self);

@interface ImActorModelModulesPresencePresenceActor_UserOnline () {
 @public
  jint uid_;
  jlong updateDate_;
}

@end

@interface ImActorModelModulesPresencePresenceActor_UserOffline () {
 @public
  jint uid_;
  jlong updateDate_;
}

@end

@interface ImActorModelModulesPresencePresenceActor_UserLastSeen () {
 @public
  jint uid_;
  jlong date_;
  jlong updateDate_;
}

@end

@interface ImActorModelModulesPresencePresenceActor_GroupOnline () {
 @public
  jint gid_;
  jint count_;
  jlong updateDate_;
}

@end

@interface ImActorModelModulesPresencePresenceActor_Subscribe () {
 @public
  AMPeer *peer_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelModulesPresencePresenceActor_Subscribe, peer_, AMPeer *)

@interface ImActorModelModulesPresencePresenceActor_$1 : NSObject < DKActorCreator > {
 @public
  ImActorModelModulesModules *val$messenger_;
}

- (ImActorModelModulesPresencePresenceActor *)create;

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesPresencePresenceActor_$1)

J2OBJC_FIELD_SETTER(ImActorModelModulesPresencePresenceActor_$1, val$messenger_, ImActorModelModulesModules *)

__attribute__((unused)) static void ImActorModelModulesPresencePresenceActor_$1_initWithImActorModelModulesModules_(ImActorModelModulesPresencePresenceActor_$1 *self, ImActorModelModulesModules *capture$0);

__attribute__((unused)) static ImActorModelModulesPresencePresenceActor_$1 *new_ImActorModelModulesPresencePresenceActor_$1_initWithImActorModelModulesModules_(ImActorModelModulesModules *capture$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesPresencePresenceActor_$1)

@interface ImActorModelModulesPresencePresenceActor_$2 : NSObject < DKMailboxCreator >

- (DKMailbox *)createMailboxWithDKMailboxesQueue:(DKMailboxesQueue *)queue;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesPresencePresenceActor_$2)

__attribute__((unused)) static void ImActorModelModulesPresencePresenceActor_$2_init(ImActorModelModulesPresencePresenceActor_$2 *self);

__attribute__((unused)) static ImActorModelModulesPresencePresenceActor_$2 *new_ImActorModelModulesPresencePresenceActor_$2_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesPresencePresenceActor_$2)

@interface ImActorModelModulesPresencePresenceActor_$2_$1 : DKMailbox

- (jboolean)isEqualEnvelopeWithDKEnvelope:(DKEnvelope *)a
                           withDKEnvelope:(DKEnvelope *)b;

- (instancetype)initWithDKMailboxesQueue:(DKMailboxesQueue *)arg$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesPresencePresenceActor_$2_$1)

__attribute__((unused)) static void ImActorModelModulesPresencePresenceActor_$2_$1_initWithDKMailboxesQueue_(ImActorModelModulesPresencePresenceActor_$2_$1 *self, DKMailboxesQueue *arg$0);

__attribute__((unused)) static ImActorModelModulesPresencePresenceActor_$2_$1 *new_ImActorModelModulesPresencePresenceActor_$2_$1_initWithDKMailboxesQueue_(DKMailboxesQueue *arg$0) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesPresencePresenceActor_$2_$1)

@implementation ImActorModelModulesPresencePresenceActor

+ (DKActorRef *)getWithImActorModelModulesModules:(ImActorModelModulesModules *)messenger {
  return ImActorModelModulesPresencePresenceActor_getWithImActorModelModulesModules_(messenger);
}

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)messenger {
  ImActorModelModulesPresencePresenceActor_initWithImActorModelModulesModules_(self, messenger);
  return self;
}

- (void)onUserOnlineWithInt:(jint)uid
                   withLong:(jlong)updateDate {
  ImActorModelModulesPresencePresenceActor_onUserOnlineWithInt_withLong_(self, uid, updateDate);
}

- (void)onUserOfflineWithInt:(jint)uid
                    withLong:(jlong)updateDate {
  ImActorModelModulesPresencePresenceActor_onUserOfflineWithInt_withLong_(self, uid, updateDate);
}

- (void)onUserLastSeenWithInt:(jint)uid
                     withLong:(jlong)date
                     withLong:(jlong)updateDate {
  ImActorModelModulesPresencePresenceActor_onUserLastSeenWithInt_withLong_withLong_(self, uid, date, updateDate);
}

- (void)onGroupOnlineWithInt:(jint)gid
                     withInt:(jint)count
                    withLong:(jlong)updateDate {
  ImActorModelModulesPresencePresenceActor_onGroupOnlineWithInt_withInt_withLong_(self, gid, count, updateDate);
}

- (void)subscribeWithAMPeer:(AMPeer *)peer {
  ImActorModelModulesPresencePresenceActor_subscribeWithAMPeer_(self, peer);
}

- (void)onNewSessionCreated {
  ImActorModelModulesPresencePresenceActor_onNewSessionCreated(self);
}

- (void)onReceiveWithId:(id)message {
  if ([message isKindOfClass:[ImActorModelModulesPresencePresenceActor_UserOnline class]]) {
    ImActorModelModulesPresencePresenceActor_UserOnline *online = (ImActorModelModulesPresencePresenceActor_UserOnline *) check_class_cast(message, [ImActorModelModulesPresencePresenceActor_UserOnline class]);
    ImActorModelModulesPresencePresenceActor_onUserOnlineWithInt_withLong_(self, [((ImActorModelModulesPresencePresenceActor_UserOnline *) nil_chk(online)) getUid], [online getUpdateDate]);
  }
  else if ([message isKindOfClass:[ImActorModelModulesPresencePresenceActor_UserOffline class]]) {
    ImActorModelModulesPresencePresenceActor_UserOffline *offline = (ImActorModelModulesPresencePresenceActor_UserOffline *) check_class_cast(message, [ImActorModelModulesPresencePresenceActor_UserOffline class]);
    ImActorModelModulesPresencePresenceActor_onUserOfflineWithInt_withLong_(self, [((ImActorModelModulesPresencePresenceActor_UserOffline *) nil_chk(offline)) getUid], [offline getUpdateDate]);
  }
  else if ([message isKindOfClass:[ImActorModelModulesPresencePresenceActor_UserLastSeen class]]) {
    ImActorModelModulesPresencePresenceActor_UserLastSeen *lastSeen = (ImActorModelModulesPresencePresenceActor_UserLastSeen *) check_class_cast(message, [ImActorModelModulesPresencePresenceActor_UserLastSeen class]);
    ImActorModelModulesPresencePresenceActor_onUserLastSeenWithInt_withLong_withLong_(self, [((ImActorModelModulesPresencePresenceActor_UserLastSeen *) nil_chk(lastSeen)) getUid], [lastSeen getDate], [lastSeen getUpdateDate]);
  }
  else if ([message isKindOfClass:[ImActorModelModulesPresencePresenceActor_GroupOnline class]]) {
    ImActorModelModulesPresencePresenceActor_GroupOnline *groupOnline = (ImActorModelModulesPresencePresenceActor_GroupOnline *) check_class_cast(message, [ImActorModelModulesPresencePresenceActor_GroupOnline class]);
    ImActorModelModulesPresencePresenceActor_onGroupOnlineWithInt_withInt_withLong_(self, [((ImActorModelModulesPresencePresenceActor_GroupOnline *) nil_chk(groupOnline)) getGid], [groupOnline getCount], [groupOnline getUpdateDate]);
  }
  else if ([message isKindOfClass:[ImActorModelModulesPresencePresenceActor_Subscribe class]]) {
    ImActorModelModulesPresencePresenceActor_subscribeWithAMPeer_(self, [((ImActorModelModulesPresencePresenceActor_Subscribe *) nil_chk(((ImActorModelModulesPresencePresenceActor_Subscribe *) check_class_cast(message, [ImActorModelModulesPresencePresenceActor_Subscribe class])))) getPeer]);
  }
  else if ([message isKindOfClass:[ImActorModelModulesPresencePresenceActor_SessionCreated class]]) {
    ImActorModelModulesPresencePresenceActor_onNewSessionCreated(self);
  }
  else {
    [self dropWithId:message];
  }
}

@end

DKActorRef *ImActorModelModulesPresencePresenceActor_getWithImActorModelModulesModules_(ImActorModelModulesModules *messenger) {
  ImActorModelModulesPresencePresenceActor_initialize();
  return [((DKActorSystem *) nil_chk(DKActorSystem_system())) actorOfWithDKProps:DKProps_createWithIOSClass_withDKActorCreator_withDKMailboxCreator_(ImActorModelModulesPresencePresenceActor_class_(), new_ImActorModelModulesPresencePresenceActor_$1_initWithImActorModelModulesModules_(messenger), new_ImActorModelModulesPresencePresenceActor_$2_init()) withNSString:@"actor/presence/users"];
}

void ImActorModelModulesPresencePresenceActor_initWithImActorModelModulesModules_(ImActorModelModulesPresencePresenceActor *self, ImActorModelModulesModules *messenger) {
  (void) ImActorModelModulesUtilsModuleActor_initWithImActorModelModulesModules_(self, messenger);
  self->lastUidState_ = new_JavaUtilHashMap_init();
  self->lastGidState_ = new_JavaUtilHashMap_init();
  self->uids_ = new_JavaUtilHashSet_init();
  self->gids_ = new_JavaUtilHashSet_init();
}

ImActorModelModulesPresencePresenceActor *new_ImActorModelModulesPresencePresenceActor_initWithImActorModelModulesModules_(ImActorModelModulesModules *messenger) {
  ImActorModelModulesPresencePresenceActor *self = [ImActorModelModulesPresencePresenceActor alloc];
  ImActorModelModulesPresencePresenceActor_initWithImActorModelModulesModules_(self, messenger);
  return self;
}

void ImActorModelModulesPresencePresenceActor_onUserOnlineWithInt_withLong_(ImActorModelModulesPresencePresenceActor *self, jint uid, jlong updateDate) {
  if ([((JavaUtilHashMap *) nil_chk(self->lastUidState_)) containsKeyWithId:JavaLangInteger_valueOfWithInt_(uid)] && [((JavaLangLong *) nil_chk([self->lastUidState_ getWithId:JavaLangInteger_valueOfWithInt_(uid)])) longLongValue] >= updateDate) {
    return;
  }
  (void) [self->lastUidState_ putWithId:JavaLangInteger_valueOfWithInt_(uid) withId:JavaLangLong_valueOfWithLong_(updateDate)];
  AMUserVM *vm = [self getUserVMWithInt:uid];
  if (vm != nil) {
    [((AMUserPresenceValueModel *) nil_chk([vm getPresenceModel])) changeWithValue:new_AMUserPresence_initWithAMUserPresence_StateEnum_(AMUserPresence_StateEnum_get_ONLINE())];
  }
  [((DKActorRef *) nil_chk([self self__])) sendOnceWithId:new_ImActorModelModulesPresencePresenceActor_UserOffline_initWithInt_withLong_(uid, updateDate + ImActorModelModulesPresencePresenceActor_ONLINE_TIMEOUT) withLong:ImActorModelModulesPresencePresenceActor_ONLINE_TIMEOUT];
}

void ImActorModelModulesPresencePresenceActor_onUserOfflineWithInt_withLong_(ImActorModelModulesPresencePresenceActor *self, jint uid, jlong updateDate) {
  if ([((JavaUtilHashMap *) nil_chk(self->lastUidState_)) containsKeyWithId:JavaLangInteger_valueOfWithInt_(uid)] && [((JavaLangLong *) nil_chk([self->lastUidState_ getWithId:JavaLangInteger_valueOfWithInt_(uid)])) longLongValue] >= updateDate) {
    return;
  }
  (void) [self->lastUidState_ putWithId:JavaLangInteger_valueOfWithInt_(uid) withId:JavaLangLong_valueOfWithLong_(updateDate)];
  AMUserVM *vm = [self getUserVMWithInt:uid];
  if (vm != nil) {
    [((AMUserPresenceValueModel *) nil_chk([vm getPresenceModel])) changeWithValue:new_AMUserPresence_initWithAMUserPresence_StateEnum_(AMUserPresence_StateEnum_get_OFFLINE())];
  }
}

void ImActorModelModulesPresencePresenceActor_onUserLastSeenWithInt_withLong_withLong_(ImActorModelModulesPresencePresenceActor *self, jint uid, jlong date, jlong updateDate) {
  if ([((JavaUtilHashMap *) nil_chk(self->lastUidState_)) containsKeyWithId:JavaLangInteger_valueOfWithInt_(uid)] && [((JavaLangLong *) nil_chk([self->lastUidState_ getWithId:JavaLangInteger_valueOfWithInt_(uid)])) longLongValue] >= updateDate) {
    return;
  }
  (void) [self->lastUidState_ putWithId:JavaLangInteger_valueOfWithInt_(uid) withId:JavaLangLong_valueOfWithLong_(updateDate)];
  AMUserVM *vm = [self getUserVMWithInt:uid];
  if (vm != nil) {
    [((AMUserPresenceValueModel *) nil_chk([vm getPresenceModel])) changeWithValue:new_AMUserPresence_initWithAMUserPresence_StateEnum_withLong_(AMUserPresence_StateEnum_get_OFFLINE(), date)];
  }
}

void ImActorModelModulesPresencePresenceActor_onGroupOnlineWithInt_withInt_withLong_(ImActorModelModulesPresencePresenceActor *self, jint gid, jint count, jlong updateDate) {
  if ([((JavaUtilHashMap *) nil_chk(self->lastGidState_)) containsKeyWithId:JavaLangInteger_valueOfWithInt_(gid)] && [((JavaLangLong *) nil_chk([self->lastGidState_ getWithId:JavaLangInteger_valueOfWithInt_(gid)])) longLongValue] >= updateDate) {
    return;
  }
  (void) [self->lastGidState_ putWithId:JavaLangInteger_valueOfWithInt_(gid) withId:JavaLangLong_valueOfWithLong_(updateDate)];
  AMGroupVM *vm = [self getGroupVMWithInt:gid];
  if (vm != nil) {
    [((AMValueModel *) nil_chk([vm getPresenceModel])) changeWithValue:JavaLangInteger_valueOfWithInt_(count)];
  }
}

void ImActorModelModulesPresencePresenceActor_subscribeWithAMPeer_(ImActorModelModulesPresencePresenceActor *self, AMPeer *peer) {
  if ([((AMPeer *) nil_chk(peer)) getPeerType] == AMPeerTypeEnum_get_PRIVATE()) {
    if ([((JavaUtilHashSet *) nil_chk(self->uids_)) containsWithId:JavaLangInteger_valueOfWithInt_([peer getPeerId])]) {
      return;
    }
    AMUser *user = [self getUserWithInt:[peer getPeerId]];
    if (user == nil) {
      return;
    }
    [self->uids_ addWithId:JavaLangInteger_valueOfWithInt_([((AMUser *) nil_chk(user)) getUid])];
    id<JavaUtilList> peers = new_JavaUtilArrayList_init();
    [peers addWithId:new_APUserOutPeer_initWithInt_withLong_([user getUid], [user getAccessHash])];
    [self requestWithAPRequest:new_APRequestSubscribeToOnline_initWithJavaUtilList_(peers)];
  }
  else if ([peer getPeerType] == AMPeerTypeEnum_get_GROUP()) {
    if ([((JavaUtilHashSet *) nil_chk(self->gids_)) containsWithId:JavaLangInteger_valueOfWithInt_([peer getPeerId])]) {
      return;
    }
    AMGroup *group = [self getGroupWithInt:[peer getPeerId]];
    if (group == nil) {
      return;
    }
    [self->gids_ addWithId:JavaLangInteger_valueOfWithInt_([peer getPeerId])];
    id<JavaUtilList> peers = new_JavaUtilArrayList_init();
    [peers addWithId:new_APGroupOutPeer_initWithInt_withLong_([((AMGroup *) nil_chk(group)) getGroupId], [group getAccessHash])];
    [self requestWithAPRequest:new_APRequestSubscribeToGroupOnline_initWithJavaUtilList_(peers)];
  }
}

void ImActorModelModulesPresencePresenceActor_onNewSessionCreated(ImActorModelModulesPresencePresenceActor *self) {
  id<JavaUtilList> userPeers = new_JavaUtilArrayList_init();
  for (JavaLangInteger *boxed__ in nil_chk(self->uids_)) {
    jint uid = [((JavaLangInteger *) nil_chk(boxed__)) intValue];
    AMUser *user = [self getUserWithInt:uid];
    if (user == nil) {
      continue;
    }
    [userPeers addWithId:new_APUserOutPeer_initWithInt_withLong_(uid, [((AMUser *) nil_chk(user)) getAccessHash])];
  }
  if ([userPeers size] > 0) {
    [self requestWithAPRequest:new_APRequestSubscribeToOnline_initWithJavaUtilList_(userPeers)];
  }
  id<JavaUtilList> groupPeers = new_JavaUtilArrayList_init();
  for (JavaLangInteger *boxed__ in nil_chk(self->gids_)) {
    jint gid = [((JavaLangInteger *) nil_chk(boxed__)) intValue];
    AMGroup *group = [self getGroupWithInt:gid];
    if (group == nil) {
      continue;
    }
    [groupPeers addWithId:new_APGroupOutPeer_initWithInt_withLong_([((AMGroup *) nil_chk(group)) getGroupId], [group getAccessHash])];
  }
  if ([groupPeers size] > 0) {
    [self requestWithAPRequest:new_APRequestSubscribeToGroupOnline_initWithJavaUtilList_(groupPeers)];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesPresencePresenceActor)

@implementation ImActorModelModulesPresencePresenceActor_UserOnline

- (instancetype)initWithInt:(jint)uid
                   withLong:(jlong)updateDate {
  ImActorModelModulesPresencePresenceActor_UserOnline_initWithInt_withLong_(self, uid, updateDate);
  return self;
}

- (jint)getUid {
  return uid_;
}

- (jlong)getUpdateDate {
  return updateDate_;
}

- (jboolean)isEqual:(id)o {
  if (self == o) return YES;
  if (o == nil || [self getClass] != [o getClass]) return NO;
  ImActorModelModulesPresencePresenceActor_UserOnline *that = (ImActorModelModulesPresencePresenceActor_UserOnline *) check_class_cast(o, [ImActorModelModulesPresencePresenceActor_UserOnline class]);
  if (uid_ != ((ImActorModelModulesPresencePresenceActor_UserOnline *) nil_chk(that))->uid_) return NO;
  return YES;
}

- (NSUInteger)hash {
  return uid_;
}

@end

void ImActorModelModulesPresencePresenceActor_UserOnline_initWithInt_withLong_(ImActorModelModulesPresencePresenceActor_UserOnline *self, jint uid, jlong updateDate) {
  (void) NSObject_init(self);
  self->uid_ = uid;
  self->updateDate_ = updateDate;
}

ImActorModelModulesPresencePresenceActor_UserOnline *new_ImActorModelModulesPresencePresenceActor_UserOnline_initWithInt_withLong_(jint uid, jlong updateDate) {
  ImActorModelModulesPresencePresenceActor_UserOnline *self = [ImActorModelModulesPresencePresenceActor_UserOnline alloc];
  ImActorModelModulesPresencePresenceActor_UserOnline_initWithInt_withLong_(self, uid, updateDate);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesPresencePresenceActor_UserOnline)

@implementation ImActorModelModulesPresencePresenceActor_UserOffline

- (instancetype)initWithInt:(jint)uid
                   withLong:(jlong)updateDate {
  ImActorModelModulesPresencePresenceActor_UserOffline_initWithInt_withLong_(self, uid, updateDate);
  return self;
}

- (jint)getUid {
  return uid_;
}

- (jlong)getUpdateDate {
  return updateDate_;
}

- (jboolean)isEqual:(id)o {
  if (self == o) return YES;
  if (o == nil || [self getClass] != [o getClass]) return NO;
  ImActorModelModulesPresencePresenceActor_UserOffline *that = (ImActorModelModulesPresencePresenceActor_UserOffline *) check_class_cast(o, [ImActorModelModulesPresencePresenceActor_UserOffline class]);
  if (uid_ != ((ImActorModelModulesPresencePresenceActor_UserOffline *) nil_chk(that))->uid_) return NO;
  return YES;
}

- (NSUInteger)hash {
  return uid_;
}

@end

void ImActorModelModulesPresencePresenceActor_UserOffline_initWithInt_withLong_(ImActorModelModulesPresencePresenceActor_UserOffline *self, jint uid, jlong updateDate) {
  (void) NSObject_init(self);
  self->uid_ = uid;
  self->updateDate_ = updateDate;
}

ImActorModelModulesPresencePresenceActor_UserOffline *new_ImActorModelModulesPresencePresenceActor_UserOffline_initWithInt_withLong_(jint uid, jlong updateDate) {
  ImActorModelModulesPresencePresenceActor_UserOffline *self = [ImActorModelModulesPresencePresenceActor_UserOffline alloc];
  ImActorModelModulesPresencePresenceActor_UserOffline_initWithInt_withLong_(self, uid, updateDate);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesPresencePresenceActor_UserOffline)

@implementation ImActorModelModulesPresencePresenceActor_UserLastSeen

- (instancetype)initWithInt:(jint)uid
                   withLong:(jlong)date
                   withLong:(jlong)updateDate {
  ImActorModelModulesPresencePresenceActor_UserLastSeen_initWithInt_withLong_withLong_(self, uid, date, updateDate);
  return self;
}

- (jint)getUid {
  return uid_;
}

- (jlong)getDate {
  return date_;
}

- (jlong)getUpdateDate {
  return updateDate_;
}

- (jboolean)isEqual:(id)o {
  if (self == o) return YES;
  if (o == nil || [self getClass] != [o getClass]) return NO;
  ImActorModelModulesPresencePresenceActor_UserLastSeen *that = (ImActorModelModulesPresencePresenceActor_UserLastSeen *) check_class_cast(o, [ImActorModelModulesPresencePresenceActor_UserLastSeen class]);
  if (date_ != ((ImActorModelModulesPresencePresenceActor_UserLastSeen *) nil_chk(that))->date_) return NO;
  if (uid_ != that->uid_) return NO;
  return YES;
}

- (NSUInteger)hash {
  jint result = uid_;
  result = 31 * result + (jint) (date_ ^ (URShift64(date_, 32)));
  return result;
}

@end

void ImActorModelModulesPresencePresenceActor_UserLastSeen_initWithInt_withLong_withLong_(ImActorModelModulesPresencePresenceActor_UserLastSeen *self, jint uid, jlong date, jlong updateDate) {
  (void) NSObject_init(self);
  self->uid_ = uid;
  self->date_ = date;
  self->updateDate_ = updateDate;
}

ImActorModelModulesPresencePresenceActor_UserLastSeen *new_ImActorModelModulesPresencePresenceActor_UserLastSeen_initWithInt_withLong_withLong_(jint uid, jlong date, jlong updateDate) {
  ImActorModelModulesPresencePresenceActor_UserLastSeen *self = [ImActorModelModulesPresencePresenceActor_UserLastSeen alloc];
  ImActorModelModulesPresencePresenceActor_UserLastSeen_initWithInt_withLong_withLong_(self, uid, date, updateDate);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesPresencePresenceActor_UserLastSeen)

@implementation ImActorModelModulesPresencePresenceActor_GroupOnline

- (instancetype)initWithInt:(jint)gid
                    withInt:(jint)count
                   withLong:(jlong)updateDate {
  ImActorModelModulesPresencePresenceActor_GroupOnline_initWithInt_withInt_withLong_(self, gid, count, updateDate);
  return self;
}

- (jint)getGid {
  return gid_;
}

- (jint)getCount {
  return count_;
}

- (jlong)getUpdateDate {
  return updateDate_;
}

- (jboolean)isEqual:(id)o {
  if (self == o) return YES;
  if (o == nil || [self getClass] != [o getClass]) return NO;
  ImActorModelModulesPresencePresenceActor_GroupOnline *that = (ImActorModelModulesPresencePresenceActor_GroupOnline *) check_class_cast(o, [ImActorModelModulesPresencePresenceActor_GroupOnline class]);
  if (count_ != ((ImActorModelModulesPresencePresenceActor_GroupOnline *) nil_chk(that))->count_) return NO;
  if (gid_ != that->gid_) return NO;
  return YES;
}

- (NSUInteger)hash {
  jint result = gid_;
  result = 31 * result + count_;
  return result;
}

@end

void ImActorModelModulesPresencePresenceActor_GroupOnline_initWithInt_withInt_withLong_(ImActorModelModulesPresencePresenceActor_GroupOnline *self, jint gid, jint count, jlong updateDate) {
  (void) NSObject_init(self);
  self->gid_ = gid;
  self->count_ = count;
  self->updateDate_ = updateDate;
}

ImActorModelModulesPresencePresenceActor_GroupOnline *new_ImActorModelModulesPresencePresenceActor_GroupOnline_initWithInt_withInt_withLong_(jint gid, jint count, jlong updateDate) {
  ImActorModelModulesPresencePresenceActor_GroupOnline *self = [ImActorModelModulesPresencePresenceActor_GroupOnline alloc];
  ImActorModelModulesPresencePresenceActor_GroupOnline_initWithInt_withInt_withLong_(self, gid, count, updateDate);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesPresencePresenceActor_GroupOnline)

@implementation ImActorModelModulesPresencePresenceActor_Subscribe

- (instancetype)initWithAMPeer:(AMPeer *)peer {
  ImActorModelModulesPresencePresenceActor_Subscribe_initWithAMPeer_(self, peer);
  return self;
}

- (AMPeer *)getPeer {
  return peer_;
}

@end

void ImActorModelModulesPresencePresenceActor_Subscribe_initWithAMPeer_(ImActorModelModulesPresencePresenceActor_Subscribe *self, AMPeer *peer) {
  (void) NSObject_init(self);
  self->peer_ = peer;
}

ImActorModelModulesPresencePresenceActor_Subscribe *new_ImActorModelModulesPresencePresenceActor_Subscribe_initWithAMPeer_(AMPeer *peer) {
  ImActorModelModulesPresencePresenceActor_Subscribe *self = [ImActorModelModulesPresencePresenceActor_Subscribe alloc];
  ImActorModelModulesPresencePresenceActor_Subscribe_initWithAMPeer_(self, peer);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesPresencePresenceActor_Subscribe)

@implementation ImActorModelModulesPresencePresenceActor_SessionCreated

- (instancetype)init {
  ImActorModelModulesPresencePresenceActor_SessionCreated_init(self);
  return self;
}

@end

void ImActorModelModulesPresencePresenceActor_SessionCreated_init(ImActorModelModulesPresencePresenceActor_SessionCreated *self) {
  (void) NSObject_init(self);
}

ImActorModelModulesPresencePresenceActor_SessionCreated *new_ImActorModelModulesPresencePresenceActor_SessionCreated_init() {
  ImActorModelModulesPresencePresenceActor_SessionCreated *self = [ImActorModelModulesPresencePresenceActor_SessionCreated alloc];
  ImActorModelModulesPresencePresenceActor_SessionCreated_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesPresencePresenceActor_SessionCreated)

@implementation ImActorModelModulesPresencePresenceActor_$1

- (ImActorModelModulesPresencePresenceActor *)create {
  return new_ImActorModelModulesPresencePresenceActor_initWithImActorModelModulesModules_(val$messenger_);
}

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)capture$0 {
  ImActorModelModulesPresencePresenceActor_$1_initWithImActorModelModulesModules_(self, capture$0);
  return self;
}

@end

void ImActorModelModulesPresencePresenceActor_$1_initWithImActorModelModulesModules_(ImActorModelModulesPresencePresenceActor_$1 *self, ImActorModelModulesModules *capture$0) {
  self->val$messenger_ = capture$0;
  (void) NSObject_init(self);
}

ImActorModelModulesPresencePresenceActor_$1 *new_ImActorModelModulesPresencePresenceActor_$1_initWithImActorModelModulesModules_(ImActorModelModulesModules *capture$0) {
  ImActorModelModulesPresencePresenceActor_$1 *self = [ImActorModelModulesPresencePresenceActor_$1 alloc];
  ImActorModelModulesPresencePresenceActor_$1_initWithImActorModelModulesModules_(self, capture$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesPresencePresenceActor_$1)

@implementation ImActorModelModulesPresencePresenceActor_$2

- (DKMailbox *)createMailboxWithDKMailboxesQueue:(DKMailboxesQueue *)queue {
  return new_ImActorModelModulesPresencePresenceActor_$2_$1_initWithDKMailboxesQueue_(queue);
}

- (instancetype)init {
  ImActorModelModulesPresencePresenceActor_$2_init(self);
  return self;
}

@end

void ImActorModelModulesPresencePresenceActor_$2_init(ImActorModelModulesPresencePresenceActor_$2 *self) {
  (void) NSObject_init(self);
}

ImActorModelModulesPresencePresenceActor_$2 *new_ImActorModelModulesPresencePresenceActor_$2_init() {
  ImActorModelModulesPresencePresenceActor_$2 *self = [ImActorModelModulesPresencePresenceActor_$2 alloc];
  ImActorModelModulesPresencePresenceActor_$2_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesPresencePresenceActor_$2)

@implementation ImActorModelModulesPresencePresenceActor_$2_$1

- (jboolean)isEqualEnvelopeWithDKEnvelope:(DKEnvelope *)a
                           withDKEnvelope:(DKEnvelope *)b {
  if ([nil_chk([((DKEnvelope *) nil_chk(a)) getMessage]) isEqual:[((DKEnvelope *) nil_chk(b)) getMessage]]) {
    return YES;
  }
  return [super isEqualEnvelopeWithDKEnvelope:a withDKEnvelope:b];
}

- (instancetype)initWithDKMailboxesQueue:(DKMailboxesQueue *)arg$0 {
  ImActorModelModulesPresencePresenceActor_$2_$1_initWithDKMailboxesQueue_(self, arg$0);
  return self;
}

@end

void ImActorModelModulesPresencePresenceActor_$2_$1_initWithDKMailboxesQueue_(ImActorModelModulesPresencePresenceActor_$2_$1 *self, DKMailboxesQueue *arg$0) {
  (void) DKMailbox_initWithDKMailboxesQueue_(self, arg$0);
}

ImActorModelModulesPresencePresenceActor_$2_$1 *new_ImActorModelModulesPresencePresenceActor_$2_$1_initWithDKMailboxesQueue_(DKMailboxesQueue *arg$0) {
  ImActorModelModulesPresencePresenceActor_$2_$1 *self = [ImActorModelModulesPresencePresenceActor_$2_$1 alloc];
  ImActorModelModulesPresencePresenceActor_$2_$1_initWithDKMailboxesQueue_(self, arg$0);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesPresencePresenceActor_$2_$1)
