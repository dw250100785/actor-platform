//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core-crypto/src/main/java/im/actor/model/crypto/asn1/ASN1OctetString.java
//

#ifndef _BCASN1OctetString_H_
#define _BCASN1OctetString_H_

#include "J2ObjC_header.h"
#include "im/actor/model/crypto/asn1/ASN1Primitive.h"

@class BSDataInput;
@class BSDataOutput;
@class IOSByteArray;

@interface BCASN1OctetString : BCASN1Primitive

#pragma mark Public

- (instancetype)initWithByteArray:(IOSByteArray *)data;

- (IOSByteArray *)getData;

+ (BCASN1OctetString *)readOctetStringWithBSDataInput:(BSDataInput *)dataInput;

- (void)serializeWithBSDataOutput:(BSDataOutput *)dataOutput;

@end

J2OBJC_EMPTY_STATIC_INIT(BCASN1OctetString)

FOUNDATION_EXPORT BCASN1OctetString *BCASN1OctetString_readOctetStringWithBSDataInput_(BSDataInput *dataInput);

FOUNDATION_EXPORT void BCASN1OctetString_initWithByteArray_(BCASN1OctetString *self, IOSByteArray *data);

FOUNDATION_EXPORT BCASN1OctetString *new_BCASN1OctetString_initWithByteArray_(IOSByteArray *data) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(BCASN1OctetString)

typedef BCASN1OctetString ImActorModelCryptoAsn1ASN1OctetString;

#endif // _BCASN1OctetString_H_
