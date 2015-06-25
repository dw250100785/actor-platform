//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core-crypto/src/main/java/org/bouncycastle/crypto/BufferedBlockCipher.java
//

#ifndef _OrgBouncycastleCryptoBufferedBlockCipher_H_
#define _OrgBouncycastleCryptoBufferedBlockCipher_H_

#include "J2ObjC_header.h"

@class IOSByteArray;
@protocol OrgBouncycastleCryptoBlockCipher;
@protocol OrgBouncycastleCryptoCipherParameters;

@interface OrgBouncycastleCryptoBufferedBlockCipher : NSObject {
 @public
  IOSByteArray *buf_;
  jint bufOff_;
  jboolean forEncryption_;
  id<OrgBouncycastleCryptoBlockCipher> cipher_;
  jboolean partialBlockOkay_;
  jboolean pgpCFB_;
}

#pragma mark Public

- (instancetype)initWithOrgBouncycastleCryptoBlockCipher:(id<OrgBouncycastleCryptoBlockCipher>)cipher;

- (jint)doFinalWithByteArray:(IOSByteArray *)outArg
                     withInt:(jint)outOff;

- (jint)getBlockSize;

- (jint)getOutputSizeWithInt:(jint)length;

- (id<OrgBouncycastleCryptoBlockCipher>)getUnderlyingCipher;

- (jint)getUpdateOutputSizeWithInt:(jint)len;

- (void)init__WithBoolean:(jboolean)forEncryption
withOrgBouncycastleCryptoCipherParameters:(id<OrgBouncycastleCryptoCipherParameters>)params OBJC_METHOD_FAMILY_NONE;

- (jint)processByteWithByte:(jbyte)inArg
              withByteArray:(IOSByteArray *)outArg
                    withInt:(jint)outOff;

- (jint)processBytesWithByteArray:(IOSByteArray *)inArg
                          withInt:(jint)inOff
                          withInt:(jint)len
                    withByteArray:(IOSByteArray *)outArg
                          withInt:(jint)outOff;

- (void)reset;

#pragma mark Protected

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleCryptoBufferedBlockCipher)

J2OBJC_FIELD_SETTER(OrgBouncycastleCryptoBufferedBlockCipher, buf_, IOSByteArray *)
J2OBJC_FIELD_SETTER(OrgBouncycastleCryptoBufferedBlockCipher, cipher_, id<OrgBouncycastleCryptoBlockCipher>)

FOUNDATION_EXPORT void OrgBouncycastleCryptoBufferedBlockCipher_init(OrgBouncycastleCryptoBufferedBlockCipher *self);

FOUNDATION_EXPORT OrgBouncycastleCryptoBufferedBlockCipher *new_OrgBouncycastleCryptoBufferedBlockCipher_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgBouncycastleCryptoBufferedBlockCipher_initWithOrgBouncycastleCryptoBlockCipher_(OrgBouncycastleCryptoBufferedBlockCipher *self, id<OrgBouncycastleCryptoBlockCipher> cipher);

FOUNDATION_EXPORT OrgBouncycastleCryptoBufferedBlockCipher *new_OrgBouncycastleCryptoBufferedBlockCipher_initWithOrgBouncycastleCryptoBlockCipher_(id<OrgBouncycastleCryptoBlockCipher> cipher) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleCryptoBufferedBlockCipher)

#endif // _OrgBouncycastleCryptoBufferedBlockCipher_H_
