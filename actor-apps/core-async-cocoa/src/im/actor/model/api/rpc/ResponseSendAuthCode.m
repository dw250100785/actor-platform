//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/api/rpc/ResponseSendAuthCode.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/rpc/ResponseSendAuthCode.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Response.h"
#include "java/io/IOException.h"

@interface APResponseSendAuthCode () {
 @public
  NSString *smsHash_;
  jboolean isRegistered__;
}

@end

J2OBJC_FIELD_SETTER(APResponseSendAuthCode, smsHash_, NSString *)

@implementation APResponseSendAuthCode

+ (APResponseSendAuthCode *)fromBytesWithByteArray:(IOSByteArray *)data {
  return APResponseSendAuthCode_fromBytesWithByteArray_(data);
}

- (instancetype)initWithNSString:(NSString *)smsHash
                     withBoolean:(jboolean)isRegistered {
  APResponseSendAuthCode_initWithNSString_withBoolean_(self, smsHash, isRegistered);
  return self;
}

- (instancetype)init {
  APResponseSendAuthCode_init(self);
  return self;
}

- (NSString *)getSmsHash {
  return self->smsHash_;
}

- (jboolean)isRegistered {
  return self->isRegistered__;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->smsHash_ = [((BSBserValues *) nil_chk(values)) getStringWithInt:1];
  self->isRegistered__ = [values getBoolWithInt:2];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  if (self->smsHash_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((BSBserWriter *) nil_chk(writer)) writeStringWithInt:1 withNSString:self->smsHash_];
  [writer writeBoolWithInt:2 withBoolean:self->isRegistered__];
}

- (NSString *)description {
  NSString *res = @"tuple SendAuthCode{";
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return APResponseSendAuthCode_HEADER;
}

@end

APResponseSendAuthCode *APResponseSendAuthCode_fromBytesWithByteArray_(IOSByteArray *data) {
  APResponseSendAuthCode_initialize();
  return ((APResponseSendAuthCode *) BSBser_parseWithBSBserObject_withByteArray_(new_APResponseSendAuthCode_init(), data));
}

void APResponseSendAuthCode_initWithNSString_withBoolean_(APResponseSendAuthCode *self, NSString *smsHash, jboolean isRegistered) {
  (void) APResponse_init(self);
  self->smsHash_ = smsHash;
  self->isRegistered__ = isRegistered;
}

APResponseSendAuthCode *new_APResponseSendAuthCode_initWithNSString_withBoolean_(NSString *smsHash, jboolean isRegistered) {
  APResponseSendAuthCode *self = [APResponseSendAuthCode alloc];
  APResponseSendAuthCode_initWithNSString_withBoolean_(self, smsHash, isRegistered);
  return self;
}

void APResponseSendAuthCode_init(APResponseSendAuthCode *self) {
  (void) APResponse_init(self);
}

APResponseSendAuthCode *new_APResponseSendAuthCode_init() {
  APResponseSendAuthCode *self = [APResponseSendAuthCode alloc];
  APResponseSendAuthCode_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APResponseSendAuthCode)
