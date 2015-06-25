//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core-crypto/src/main/java/org/bouncycastle/crypto/StreamCipher.java
//

#ifndef _OrgBouncycastleCryptoStreamCipher_H_
#define _OrgBouncycastleCryptoStreamCipher_H_

#include "J2ObjC_header.h"

@class IOSByteArray;
@protocol OrgBouncycastleCryptoCipherParameters;

@protocol OrgBouncycastleCryptoStreamCipher < NSObject, JavaObject >

- (void)init__WithBoolean:(jboolean)forEncryption
withOrgBouncycastleCryptoCipherParameters:(id<OrgBouncycastleCryptoCipherParameters>)params OBJC_METHOD_FAMILY_NONE;

- (NSString *)getAlgorithmName;

- (jbyte)returnByteWithByte:(jbyte)inArg;

- (jint)processBytesWithByteArray:(IOSByteArray *)inArg
                          withInt:(jint)inOff
                          withInt:(jint)len
                    withByteArray:(IOSByteArray *)outArg
                          withInt:(jint)outOff;

- (void)reset;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleCryptoStreamCipher)

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleCryptoStreamCipher)

#endif // _OrgBouncycastleCryptoStreamCipher_H_
