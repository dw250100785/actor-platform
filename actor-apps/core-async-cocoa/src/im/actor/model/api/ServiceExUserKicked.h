//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/api/ServiceExUserKicked.java
//

#ifndef _APServiceExUserKicked_H_
#define _APServiceExUserKicked_H_

#include "J2ObjC_header.h"
#include "im/actor/model/api/ServiceEx.h"

@class BSBserValues;
@class BSBserWriter;

@interface APServiceExUserKicked : APServiceEx

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)kickedUid;

- (jint)getHeader;

- (jint)getKickedUid;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APServiceExUserKicked)

FOUNDATION_EXPORT void APServiceExUserKicked_initWithInt_(APServiceExUserKicked *self, jint kickedUid);

FOUNDATION_EXPORT APServiceExUserKicked *new_APServiceExUserKicked_initWithInt_(jint kickedUid) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void APServiceExUserKicked_init(APServiceExUserKicked *self);

FOUNDATION_EXPORT APServiceExUserKicked *new_APServiceExUserKicked_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APServiceExUserKicked)

typedef APServiceExUserKicked ImActorModelApiServiceExUserKicked;

#endif // _APServiceExUserKicked_H_
