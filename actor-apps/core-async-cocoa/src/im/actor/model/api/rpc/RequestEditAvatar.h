//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/api/rpc/RequestEditAvatar.java
//

#ifndef _APRequestEditAvatar_H_
#define _APRequestEditAvatar_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Request.h"

@class APFileLocation;
@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#define APRequestEditAvatar_HEADER 31

@interface APRequestEditAvatar : APRequest

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithAPFileLocation:(APFileLocation *)fileLocation;

+ (APRequestEditAvatar *)fromBytesWithByteArray:(IOSByteArray *)data;

- (APFileLocation *)getFileLocation;

- (jint)getHeaderKey;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APRequestEditAvatar)

J2OBJC_STATIC_FIELD_GETTER(APRequestEditAvatar, HEADER, jint)

FOUNDATION_EXPORT APRequestEditAvatar *APRequestEditAvatar_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void APRequestEditAvatar_initWithAPFileLocation_(APRequestEditAvatar *self, APFileLocation *fileLocation);

FOUNDATION_EXPORT APRequestEditAvatar *new_APRequestEditAvatar_initWithAPFileLocation_(APFileLocation *fileLocation) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void APRequestEditAvatar_init(APRequestEditAvatar *self);

FOUNDATION_EXPORT APRequestEditAvatar *new_APRequestEditAvatar_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APRequestEditAvatar)

typedef APRequestEditAvatar ImActorModelApiRpcRequestEditAvatar;

#endif // _APRequestEditAvatar_H_
