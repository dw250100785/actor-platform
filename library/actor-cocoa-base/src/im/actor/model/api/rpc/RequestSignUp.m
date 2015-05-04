//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/RequestSignUp.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/RequestSignUp.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/rpc/RequestSignUp.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/droidkit/bser/Utils.h"
#include "im/actor/model/network/parser/Request.h"
#include "java/io/IOException.h"

@interface ImActorModelApiRpcRequestSignUp () {
 @public
  jlong phoneNumber_;
  NSString *smsHash_;
  NSString *smsCode_;
  NSString *name_;
  IOSByteArray *deviceHash_;
  NSString *deviceTitle_;
  jint appId_;
  NSString *appKey_;
  jboolean isSilent__;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestSignUp, smsHash_, NSString *)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestSignUp, smsCode_, NSString *)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestSignUp, name_, NSString *)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestSignUp, deviceHash_, IOSByteArray *)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestSignUp, deviceTitle_, NSString *)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestSignUp, appKey_, NSString *)


#line 24
@implementation ImActorModelApiRpcRequestSignUp


#line 27
+ (ImActorModelApiRpcRequestSignUp *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcRequestSignUp_fromBytesWithByteArray_(data);
}


#line 41
- (instancetype)initWithLong:(jlong)phoneNumber
                withNSString:(NSString *)smsHash
                withNSString:(NSString *)smsCode
                withNSString:(NSString *)name
               withByteArray:(IOSByteArray *)deviceHash
                withNSString:(NSString *)deviceTitle
                     withInt:(jint)appId
                withNSString:(NSString *)appKey
                 withBoolean:(jboolean)isSilent {
  ImActorModelApiRpcRequestSignUp_initWithLong_withNSString_withNSString_withNSString_withByteArray_withNSString_withInt_withNSString_withBoolean_(self, phoneNumber, smsHash, smsCode, name, deviceHash, deviceTitle, appId, appKey, isSilent);
  return self;
}


#line 53
- (instancetype)init {
  ImActorModelApiRpcRequestSignUp_init(self);
  return self;
}


#line 57
- (jlong)getPhoneNumber {
  return self->phoneNumber_;
}

- (NSString *)getSmsHash {
  return self->smsHash_;
}

- (NSString *)getSmsCode {
  return self->smsCode_;
}

- (NSString *)getName {
  return self->name_;
}

- (IOSByteArray *)getDeviceHash {
  return self->deviceHash_;
}

- (NSString *)getDeviceTitle {
  return self->deviceTitle_;
}

- (jint)getAppId {
  return self->appId_;
}

- (NSString *)getAppKey {
  return self->appKey_;
}

- (jboolean)isSilent {
  return self->isSilent__;
}


#line 94
- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->phoneNumber_ = [((BSBserValues *) nil_chk(values)) getLongWithInt:1];
  self->smsHash_ = [values getStringWithInt:2];
  self->smsCode_ = [values getStringWithInt:3];
  self->name_ = [values getStringWithInt:4];
  self->deviceHash_ = [values getBytesWithInt:7];
  self->deviceTitle_ = [values getStringWithInt:8];
  self->appId_ = [values getIntWithInt:9];
  self->appKey_ = [values getStringWithInt:10];
  self->isSilent__ = [values getBoolWithInt:11];
}


#line 107
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeLongWithInt:1 withLong:self->phoneNumber_];
  if (self->smsHash_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeStringWithInt:2 withNSString:self->smsHash_];
  if (self->smsCode_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeStringWithInt:3 withNSString:self->smsCode_];
  if (self->name_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeStringWithInt:4 withNSString:self->name_];
  if (self->deviceHash_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeBytesWithInt:7 withByteArray:self->deviceHash_];
  if (self->deviceTitle_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeStringWithInt:8 withNSString:self->deviceTitle_];
  [writer writeIntWithInt:9 withInt:self->appId_];
  if (self->appKey_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeStringWithInt:10 withNSString:self->appKey_];
  [writer writeBoolWithInt:11 withBoolean:self->isSilent__];
}


#line 138
- (NSString *)description {
  NSString *res = @"rpc SignUp{";
  res = JreStrcat("$$", res, JreStrcat("$$", @"name=", self->name_));
  res = JreStrcat("$$", res, JreStrcat("$$", @", deviceHash=", BSUtils_byteArrayToStringWithByteArray_(self->deviceHash_)));
  res = JreStrcat("$$", res, JreStrcat("$$", @", deviceTitle=", self->deviceTitle_));
  res = JreStrcat("$C", res, '}');
  return res;
}


#line 148
- (jint)getHeaderKey {
  return ImActorModelApiRpcRequestSignUp_HEADER;
}

@end


#line 27
ImActorModelApiRpcRequestSignUp *ImActorModelApiRpcRequestSignUp_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcRequestSignUp_initialize();
  
#line 28
  return ((ImActorModelApiRpcRequestSignUp *) BSBser_parseWithBSBserObject_withByteArray_(new_ImActorModelApiRpcRequestSignUp_init(), data));
}


#line 41
void ImActorModelApiRpcRequestSignUp_initWithLong_withNSString_withNSString_withNSString_withByteArray_withNSString_withInt_withNSString_withBoolean_(ImActorModelApiRpcRequestSignUp *self, jlong phoneNumber, NSString *smsHash, NSString *smsCode, NSString *name, IOSByteArray *deviceHash, NSString *deviceTitle, jint appId, NSString *appKey, jboolean isSilent) {
  (void) ImActorModelNetworkParserRequest_init(self);
  
#line 42
  self->phoneNumber_ = phoneNumber;
  self->smsHash_ = smsHash;
  self->smsCode_ = smsCode;
  self->name_ = name;
  self->deviceHash_ = deviceHash;
  self->deviceTitle_ = deviceTitle;
  self->appId_ = appId;
  self->appKey_ = appKey;
  self->isSilent__ = isSilent;
}


#line 41
ImActorModelApiRpcRequestSignUp *new_ImActorModelApiRpcRequestSignUp_initWithLong_withNSString_withNSString_withNSString_withByteArray_withNSString_withInt_withNSString_withBoolean_(jlong phoneNumber, NSString *smsHash, NSString *smsCode, NSString *name, IOSByteArray *deviceHash, NSString *deviceTitle, jint appId, NSString *appKey, jboolean isSilent) {
  ImActorModelApiRpcRequestSignUp *self = [ImActorModelApiRpcRequestSignUp alloc];
  ImActorModelApiRpcRequestSignUp_initWithLong_withNSString_withNSString_withNSString_withByteArray_withNSString_withInt_withNSString_withBoolean_(self, phoneNumber, smsHash, smsCode, name, deviceHash, deviceTitle, appId, appKey, isSilent);
  return self;
}


#line 53
void ImActorModelApiRpcRequestSignUp_init(ImActorModelApiRpcRequestSignUp *self) {
  (void) ImActorModelNetworkParserRequest_init(self);
}


#line 53
ImActorModelApiRpcRequestSignUp *new_ImActorModelApiRpcRequestSignUp_init() {
  ImActorModelApiRpcRequestSignUp *self = [ImActorModelApiRpcRequestSignUp alloc];
  ImActorModelApiRpcRequestSignUp_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcRequestSignUp)
