//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/api/rpc/RequestKickUser.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/GroupOutPeer.h"
#include "im/actor/model/api/UserOutPeer.h"
#include "im/actor/model/api/rpc/RequestKickUser.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Request.h"
#include "java/io/IOException.h"

@interface APRequestKickUser () {
 @public
  APGroupOutPeer *groupPeer_;
  jlong rid_;
  APUserOutPeer *user_;
}

@end

J2OBJC_FIELD_SETTER(APRequestKickUser, groupPeer_, APGroupOutPeer *)
J2OBJC_FIELD_SETTER(APRequestKickUser, user_, APUserOutPeer *)

@implementation APRequestKickUser

+ (APRequestKickUser *)fromBytesWithByteArray:(IOSByteArray *)data {
  return APRequestKickUser_fromBytesWithByteArray_(data);
}

- (instancetype)initWithAPGroupOutPeer:(APGroupOutPeer *)groupPeer
                              withLong:(jlong)rid
                     withAPUserOutPeer:(APUserOutPeer *)user {
  APRequestKickUser_initWithAPGroupOutPeer_withLong_withAPUserOutPeer_(self, groupPeer, rid, user);
  return self;
}

- (instancetype)init {
  APRequestKickUser_init(self);
  return self;
}

- (APGroupOutPeer *)getGroupPeer {
  return self->groupPeer_;
}

- (jlong)getRid {
  return self->rid_;
}

- (APUserOutPeer *)getUser {
  return self->user_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->groupPeer_ = [((BSBserValues *) nil_chk(values)) getObjWithInt:1 withBSBserObject:new_APGroupOutPeer_init()];
  self->rid_ = [values getLongWithInt:4];
  self->user_ = [values getObjWithInt:3 withBSBserObject:new_APUserOutPeer_init()];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  if (self->groupPeer_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((BSBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withBSBserObject:self->groupPeer_];
  [writer writeLongWithInt:4 withLong:self->rid_];
  if (self->user_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeObjectWithInt:3 withBSBserObject:self->user_];
}

- (NSString *)description {
  NSString *res = @"rpc KickUser{";
  res = JreStrcat("$$", res, JreStrcat("$@", @"groupPeer=", self->groupPeer_));
  res = JreStrcat("$$", res, JreStrcat("$J", @", rid=", self->rid_));
  res = JreStrcat("$$", res, JreStrcat("$@", @", user=", self->user_));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return APRequestKickUser_HEADER;
}

@end

APRequestKickUser *APRequestKickUser_fromBytesWithByteArray_(IOSByteArray *data) {
  APRequestKickUser_initialize();
  return ((APRequestKickUser *) BSBser_parseWithBSBserObject_withByteArray_(new_APRequestKickUser_init(), data));
}

void APRequestKickUser_initWithAPGroupOutPeer_withLong_withAPUserOutPeer_(APRequestKickUser *self, APGroupOutPeer *groupPeer, jlong rid, APUserOutPeer *user) {
  (void) APRequest_init(self);
  self->groupPeer_ = groupPeer;
  self->rid_ = rid;
  self->user_ = user;
}

APRequestKickUser *new_APRequestKickUser_initWithAPGroupOutPeer_withLong_withAPUserOutPeer_(APGroupOutPeer *groupPeer, jlong rid, APUserOutPeer *user) {
  APRequestKickUser *self = [APRequestKickUser alloc];
  APRequestKickUser_initWithAPGroupOutPeer_withLong_withAPUserOutPeer_(self, groupPeer, rid, user);
  return self;
}

void APRequestKickUser_init(APRequestKickUser *self) {
  (void) APRequest_init(self);
}

APRequestKickUser *new_APRequestKickUser_init() {
  APRequestKickUser *self = [APRequestKickUser alloc];
  APRequestKickUser_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APRequestKickUser)
