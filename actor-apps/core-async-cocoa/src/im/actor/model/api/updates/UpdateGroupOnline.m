//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/api/updates/UpdateGroupOnline.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/updates/UpdateGroupOnline.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Update.h"
#include "java/io/IOException.h"

@interface APUpdateGroupOnline () {
 @public
  jint groupId_;
  jint count_;
}

@end

@implementation APUpdateGroupOnline

+ (APUpdateGroupOnline *)fromBytesWithByteArray:(IOSByteArray *)data {
  return APUpdateGroupOnline_fromBytesWithByteArray_(data);
}

- (instancetype)initWithInt:(jint)groupId
                    withInt:(jint)count {
  APUpdateGroupOnline_initWithInt_withInt_(self, groupId, count);
  return self;
}

- (instancetype)init {
  APUpdateGroupOnline_init(self);
  return self;
}

- (jint)getGroupId {
  return self->groupId_;
}

- (jint)getCount {
  return self->count_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->groupId_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
  self->count_ = [values getIntWithInt:2];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->groupId_];
  [writer writeIntWithInt:2 withInt:self->count_];
}

- (NSString *)description {
  NSString *res = @"update GroupOnline{";
  res = JreStrcat("$$", res, JreStrcat("$I", @"groupId=", self->groupId_));
  res = JreStrcat("$$", res, JreStrcat("$I", @", count=", self->count_));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return APUpdateGroupOnline_HEADER;
}

@end

APUpdateGroupOnline *APUpdateGroupOnline_fromBytesWithByteArray_(IOSByteArray *data) {
  APUpdateGroupOnline_initialize();
  return ((APUpdateGroupOnline *) BSBser_parseWithBSBserObject_withByteArray_(new_APUpdateGroupOnline_init(), data));
}

void APUpdateGroupOnline_initWithInt_withInt_(APUpdateGroupOnline *self, jint groupId, jint count) {
  (void) APUpdate_init(self);
  self->groupId_ = groupId;
  self->count_ = count;
}

APUpdateGroupOnline *new_APUpdateGroupOnline_initWithInt_withInt_(jint groupId, jint count) {
  APUpdateGroupOnline *self = [APUpdateGroupOnline alloc];
  APUpdateGroupOnline_initWithInt_withInt_(self, groupId, count);
  return self;
}

void APUpdateGroupOnline_init(APUpdateGroupOnline *self) {
  (void) APUpdate_init(self);
}

APUpdateGroupOnline *new_APUpdateGroupOnline_init() {
  APUpdateGroupOnline *self = [APUpdateGroupOnline alloc];
  APUpdateGroupOnline_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APUpdateGroupOnline)
