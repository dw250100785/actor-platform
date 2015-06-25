//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/api/updates/UpdateUserOffline.java
//

#ifndef _APUpdateUserOffline_H_
#define _APUpdateUserOffline_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Update.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#define APUpdateUserOffline_HEADER 8

@interface APUpdateUserOffline : APUpdate

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)uid;

+ (APUpdateUserOffline *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getHeaderKey;

- (jint)getUid;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APUpdateUserOffline)

J2OBJC_STATIC_FIELD_GETTER(APUpdateUserOffline, HEADER, jint)

FOUNDATION_EXPORT APUpdateUserOffline *APUpdateUserOffline_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void APUpdateUserOffline_initWithInt_(APUpdateUserOffline *self, jint uid);

FOUNDATION_EXPORT APUpdateUserOffline *new_APUpdateUserOffline_initWithInt_(jint uid) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void APUpdateUserOffline_init(APUpdateUserOffline *self);

FOUNDATION_EXPORT APUpdateUserOffline *new_APUpdateUserOffline_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APUpdateUserOffline)

typedef APUpdateUserOffline ImActorModelApiUpdatesUpdateUserOffline;

#endif // _APUpdateUserOffline_H_
