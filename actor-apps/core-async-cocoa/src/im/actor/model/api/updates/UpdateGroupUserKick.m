//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/api/updates/UpdateGroupUserKick.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/updates/UpdateGroupUserKick.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Update.h"
#include "java/io/IOException.h"

@interface APUpdateGroupUserKick () {
 @public
  jint groupId_;
  jlong rid_;
  jint uid_;
  jint kickerUid_;
  jlong date_;
}

@end

@implementation APUpdateGroupUserKick

+ (APUpdateGroupUserKick *)fromBytesWithByteArray:(IOSByteArray *)data {
  return APUpdateGroupUserKick_fromBytesWithByteArray_(data);
}

- (instancetype)initWithInt:(jint)groupId
                   withLong:(jlong)rid
                    withInt:(jint)uid
                    withInt:(jint)kickerUid
                   withLong:(jlong)date {
  APUpdateGroupUserKick_initWithInt_withLong_withInt_withInt_withLong_(self, groupId, rid, uid, kickerUid, date);
  return self;
}

- (instancetype)init {
  APUpdateGroupUserKick_init(self);
  return self;
}

- (jint)getGroupId {
  return self->groupId_;
}

- (jlong)getRid {
  return self->rid_;
}

- (jint)getUid {
  return self->uid_;
}

- (jint)getKickerUid {
  return self->kickerUid_;
}

- (jlong)getDate {
  return self->date_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->groupId_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
  self->rid_ = [values getLongWithInt:5];
  self->uid_ = [values getIntWithInt:2];
  self->kickerUid_ = [values getIntWithInt:3];
  self->date_ = [values getLongWithInt:4];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->groupId_];
  [writer writeLongWithInt:5 withLong:self->rid_];
  [writer writeIntWithInt:2 withInt:self->uid_];
  [writer writeIntWithInt:3 withInt:self->kickerUid_];
  [writer writeLongWithInt:4 withLong:self->date_];
}

- (NSString *)description {
  NSString *res = @"update GroupUserKick{";
  res = JreStrcat("$$", res, JreStrcat("$I", @"groupId=", self->groupId_));
  res = JreStrcat("$$", res, JreStrcat("$J", @", rid=", self->rid_));
  res = JreStrcat("$$", res, JreStrcat("$I", @", uid=", self->uid_));
  res = JreStrcat("$$", res, JreStrcat("$I", @", kickerUid=", self->kickerUid_));
  res = JreStrcat("$$", res, JreStrcat("$J", @", date=", self->date_));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return APUpdateGroupUserKick_HEADER;
}

@end

APUpdateGroupUserKick *APUpdateGroupUserKick_fromBytesWithByteArray_(IOSByteArray *data) {
  APUpdateGroupUserKick_initialize();
  return ((APUpdateGroupUserKick *) BSBser_parseWithBSBserObject_withByteArray_(new_APUpdateGroupUserKick_init(), data));
}

void APUpdateGroupUserKick_initWithInt_withLong_withInt_withInt_withLong_(APUpdateGroupUserKick *self, jint groupId, jlong rid, jint uid, jint kickerUid, jlong date) {
  (void) APUpdate_init(self);
  self->groupId_ = groupId;
  self->rid_ = rid;
  self->uid_ = uid;
  self->kickerUid_ = kickerUid;
  self->date_ = date;
}

APUpdateGroupUserKick *new_APUpdateGroupUserKick_initWithInt_withLong_withInt_withInt_withLong_(jint groupId, jlong rid, jint uid, jint kickerUid, jlong date) {
  APUpdateGroupUserKick *self = [APUpdateGroupUserKick alloc];
  APUpdateGroupUserKick_initWithInt_withLong_withInt_withInt_withLong_(self, groupId, rid, uid, kickerUid, date);
  return self;
}

void APUpdateGroupUserKick_init(APUpdateGroupUserKick *self) {
  (void) APUpdate_init(self);
}

APUpdateGroupUserKick *new_APUpdateGroupUserKick_init() {
  APUpdateGroupUserKick *self = [APUpdateGroupUserKick alloc];
  APUpdateGroupUserKick_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APUpdateGroupUserKick)
