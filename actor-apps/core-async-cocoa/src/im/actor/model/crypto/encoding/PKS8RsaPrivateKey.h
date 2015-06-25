//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core-crypto/src/main/java/im/actor/model/crypto/encoding/PKS8RsaPrivateKey.java
//

#ifndef _BCPKS8RsaPrivateKey_H_
#define _BCPKS8RsaPrivateKey_H_

#include "J2ObjC_header.h"

@class IOSByteArray;
@class JavaMathBigInteger;

@interface BCPKS8RsaPrivateKey : NSObject

#pragma mark Public

- (instancetype)initWithJavaMathBigInteger:(JavaMathBigInteger *)modulus
                    withJavaMathBigInteger:(JavaMathBigInteger *)exponent;

- (instancetype)initWithByteArray:(IOSByteArray *)encoded;

- (JavaMathBigInteger *)getExponent;

- (JavaMathBigInteger *)getModulus;

- (IOSByteArray *)serialize;

@end

J2OBJC_EMPTY_STATIC_INIT(BCPKS8RsaPrivateKey)

FOUNDATION_EXPORT void BCPKS8RsaPrivateKey_initWithJavaMathBigInteger_withJavaMathBigInteger_(BCPKS8RsaPrivateKey *self, JavaMathBigInteger *modulus, JavaMathBigInteger *exponent);

FOUNDATION_EXPORT BCPKS8RsaPrivateKey *new_BCPKS8RsaPrivateKey_initWithJavaMathBigInteger_withJavaMathBigInteger_(JavaMathBigInteger *modulus, JavaMathBigInteger *exponent) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void BCPKS8RsaPrivateKey_initWithByteArray_(BCPKS8RsaPrivateKey *self, IOSByteArray *encoded);

FOUNDATION_EXPORT BCPKS8RsaPrivateKey *new_BCPKS8RsaPrivateKey_initWithByteArray_(IOSByteArray *encoded) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(BCPKS8RsaPrivateKey)

typedef BCPKS8RsaPrivateKey ImActorModelCryptoEncodingPKS8RsaPrivateKey;

#endif // _BCPKS8RsaPrivateKey_H_
