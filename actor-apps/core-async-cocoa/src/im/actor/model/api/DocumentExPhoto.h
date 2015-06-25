//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/api/DocumentExPhoto.java
//

#ifndef _APDocumentExPhoto_H_
#define _APDocumentExPhoto_H_

#include "J2ObjC_header.h"
#include "im/actor/model/api/DocumentEx.h"

@class BSBserValues;
@class BSBserWriter;

@interface APDocumentExPhoto : APDocumentEx

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)w
                    withInt:(jint)h;

- (jint)getH;

- (jint)getHeader;

- (jint)getW;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APDocumentExPhoto)

FOUNDATION_EXPORT void APDocumentExPhoto_initWithInt_withInt_(APDocumentExPhoto *self, jint w, jint h);

FOUNDATION_EXPORT APDocumentExPhoto *new_APDocumentExPhoto_initWithInt_withInt_(jint w, jint h) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void APDocumentExPhoto_init(APDocumentExPhoto *self);

FOUNDATION_EXPORT APDocumentExPhoto *new_APDocumentExPhoto_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APDocumentExPhoto)

typedef APDocumentExPhoto ImActorModelApiDocumentExPhoto;

#endif // _APDocumentExPhoto_H_
