//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/api/rpc/RequestSignInObsolete.java
//

#ifndef _APRequestSignInObsolete_H_
#define _APRequestSignInObsolete_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Request.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#define APRequestSignInObsolete_HEADER 3

@interface APRequestSignInObsolete : APRequest

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithLong:(jlong)phoneNumber
                withNSString:(NSString *)smsHash
                withNSString:(NSString *)smsCode
               withByteArray:(IOSByteArray *)deviceHash
                withNSString:(NSString *)deviceTitle
                     withInt:(jint)appId
                withNSString:(NSString *)appKey;

+ (APRequestSignInObsolete *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getAppId;

- (NSString *)getAppKey;

- (IOSByteArray *)getDeviceHash;

- (NSString *)getDeviceTitle;

- (jint)getHeaderKey;

- (jlong)getPhoneNumber;

- (NSString *)getSmsCode;

- (NSString *)getSmsHash;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APRequestSignInObsolete)

J2OBJC_STATIC_FIELD_GETTER(APRequestSignInObsolete, HEADER, jint)

FOUNDATION_EXPORT APRequestSignInObsolete *APRequestSignInObsolete_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void APRequestSignInObsolete_initWithLong_withNSString_withNSString_withByteArray_withNSString_withInt_withNSString_(APRequestSignInObsolete *self, jlong phoneNumber, NSString *smsHash, NSString *smsCode, IOSByteArray *deviceHash, NSString *deviceTitle, jint appId, NSString *appKey);

FOUNDATION_EXPORT APRequestSignInObsolete *new_APRequestSignInObsolete_initWithLong_withNSString_withNSString_withByteArray_withNSString_withInt_withNSString_(jlong phoneNumber, NSString *smsHash, NSString *smsCode, IOSByteArray *deviceHash, NSString *deviceTitle, jint appId, NSString *appKey) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void APRequestSignInObsolete_init(APRequestSignInObsolete *self);

FOUNDATION_EXPORT APRequestSignInObsolete *new_APRequestSignInObsolete_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APRequestSignInObsolete)

typedef APRequestSignInObsolete ImActorModelApiRpcRequestSignInObsolete;

#endif // _APRequestSignInObsolete_H_
