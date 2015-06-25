//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/api/rpc/RequestMessageRead.java
//

#ifndef _APRequestMessageRead_H_
#define _APRequestMessageRead_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Request.h"

@class APOutPeer;
@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#define APRequestMessageRead_HEADER 57

@interface APRequestMessageRead : APRequest

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithAPOutPeer:(APOutPeer *)peer
                         withLong:(jlong)date;

+ (APRequestMessageRead *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jlong)getDate;

- (jint)getHeaderKey;

- (APOutPeer *)getPeer;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APRequestMessageRead)

J2OBJC_STATIC_FIELD_GETTER(APRequestMessageRead, HEADER, jint)

FOUNDATION_EXPORT APRequestMessageRead *APRequestMessageRead_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void APRequestMessageRead_initWithAPOutPeer_withLong_(APRequestMessageRead *self, APOutPeer *peer, jlong date);

FOUNDATION_EXPORT APRequestMessageRead *new_APRequestMessageRead_initWithAPOutPeer_withLong_(APOutPeer *peer, jlong date) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void APRequestMessageRead_init(APRequestMessageRead *self);

FOUNDATION_EXPORT APRequestMessageRead *new_APRequestMessageRead_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APRequestMessageRead)

typedef APRequestMessageRead ImActorModelApiRpcRequestMessageRead;

#endif // _APRequestMessageRead_H_
