//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/RequestEditName.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/RequestEditName.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/rpc/RequestEditName.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Request.h"
#include "java/io/IOException.h"

@interface ImActorModelApiRpcRequestEditName () {
 @public
  NSString *name_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestEditName, name_, NSString *)


#line 24
@implementation ImActorModelApiRpcRequestEditName


#line 27
+ (ImActorModelApiRpcRequestEditName *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcRequestEditName_fromBytesWithByteArray_(data);
}


#line 33
- (instancetype)initWithNSString:(NSString *)name {
  ImActorModelApiRpcRequestEditName_initWithNSString_(self, name);
  return self;
}


#line 37
- (instancetype)init {
  ImActorModelApiRpcRequestEditName_init(self);
  return self;
}


#line 41
- (NSString *)getName {
  return self->name_;
}


#line 46
- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->name_ = [((BSBserValues *) nil_chk(values)) getStringWithInt:1];
}


#line 51
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  if (self->name_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((BSBserWriter *) nil_chk(writer)) writeStringWithInt:1 withNSString:self->name_];
}


#line 59
- (NSString *)description {
  NSString *res = @"rpc EditName{";
  res = JreStrcat("$$", res, JreStrcat("$$", @"name=", self->name_));
  res = JreStrcat("$C", res, '}');
  return res;
}


#line 67
- (jint)getHeaderKey {
  return ImActorModelApiRpcRequestEditName_HEADER;
}

@end


#line 27
ImActorModelApiRpcRequestEditName *ImActorModelApiRpcRequestEditName_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcRequestEditName_initialize();
  
#line 28
  return ((ImActorModelApiRpcRequestEditName *) BSBser_parseWithBSBserObject_withByteArray_(new_ImActorModelApiRpcRequestEditName_init(), data));
}


#line 33
void ImActorModelApiRpcRequestEditName_initWithNSString_(ImActorModelApiRpcRequestEditName *self, NSString *name) {
  (void) ImActorModelNetworkParserRequest_init(self);
  
#line 34
  self->name_ = name;
}


#line 33
ImActorModelApiRpcRequestEditName *new_ImActorModelApiRpcRequestEditName_initWithNSString_(NSString *name) {
  ImActorModelApiRpcRequestEditName *self = [ImActorModelApiRpcRequestEditName alloc];
  ImActorModelApiRpcRequestEditName_initWithNSString_(self, name);
  return self;
}


#line 37
void ImActorModelApiRpcRequestEditName_init(ImActorModelApiRpcRequestEditName *self) {
  (void) ImActorModelNetworkParserRequest_init(self);
}


#line 37
ImActorModelApiRpcRequestEditName *new_ImActorModelApiRpcRequestEditName_init() {
  ImActorModelApiRpcRequestEditName *self = [ImActorModelApiRpcRequestEditName alloc];
  ImActorModelApiRpcRequestEditName_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcRequestEditName)
