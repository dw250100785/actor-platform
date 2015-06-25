//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core-crypto/src/main/java/im/actor/model/crypto/asn1/ASN1.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/crypto/asn1/ASN1.h"
#include "im/actor/model/crypto/asn1/ASN1BitString.h"
#include "im/actor/model/crypto/asn1/ASN1Integer.h"
#include "im/actor/model/crypto/asn1/ASN1Null.h"
#include "im/actor/model/crypto/asn1/ASN1ObjectIdentifier.h"
#include "im/actor/model/crypto/asn1/ASN1OctetString.h"
#include "im/actor/model/crypto/asn1/ASN1Primitive.h"
#include "im/actor/model/crypto/asn1/ASN1Sequence.h"
#include "im/actor/model/droidkit/bser/DataInput.h"
#include "java/io/IOException.h"

@implementation BCASN1

+ (BCASN1Primitive *)readObjectWithByteArray:(IOSByteArray *)sourceData {
  return BCASN1_readObjectWithByteArray_(sourceData);
}

+ (BCASN1Primitive *)readObjectWithByteArray:(IOSByteArray *)sourceData
                                     withInt:(jint)offset
                                     withInt:(jint)len {
  return BCASN1_readObjectWithByteArray_withInt_withInt_(sourceData, offset, len);
}

+ (BCASN1Primitive *)readObjectWithBSDataInput:(BSDataInput *)dataInput {
  return BCASN1_readObjectWithBSDataInput_(dataInput);
}

- (instancetype)init {
  BCASN1_init(self);
  return self;
}

@end

BCASN1Primitive *BCASN1_readObjectWithByteArray_(IOSByteArray *sourceData) {
  BCASN1_initialize();
  return BCASN1_readObjectWithByteArray_withInt_withInt_(sourceData, 0, ((IOSByteArray *) nil_chk(sourceData))->size_);
}

BCASN1Primitive *BCASN1_readObjectWithByteArray_withInt_withInt_(IOSByteArray *sourceData, jint offset, jint len) {
  BCASN1_initialize();
  return BCASN1_readObjectWithBSDataInput_(new_BSDataInput_initWithByteArray_withInt_withInt_(sourceData, offset, len));
}

BCASN1Primitive *BCASN1_readObjectWithBSDataInput_(BSDataInput *dataInput) {
  BCASN1_initialize();
  jint tag = [((BSDataInput *) nil_chk(dataInput)) readASN1Tag];
  jint tagNumber = [dataInput readASN1TagNumberWithInt:tag];
  jboolean isConstructed = (tag & BCASN1Primitive_TAG_CONSTRUCTED) != 0;
  jint length = [dataInput readASN1Length];
  if ((tag & BCASN1Primitive_TAG_APPLICATION) != 0) {
    @throw new_JavaIoIOException_init();
  }
  if ((tag & BCASN1Primitive_TAG_TAGGED) != 0) {
    @throw new_JavaIoIOException_init();
  }
  BSDataInput *objDataInput;
  if (length > 0) {
    objDataInput = new_BSDataInput_initWithByteArray_withInt_withInt_([dataInput getData], [dataInput getOffset], length);
    [dataInput skipWithInt:length];
  }
  else {
    objDataInput = dataInput;
  }
  switch (tagNumber) {
    case BCASN1Primitive_TAG_SEQUENCE:
    return BCASN1Sequence_readSequenceWithBSDataInput_(objDataInput);
    case BCASN1Primitive_TAG_INTEGER:
    return BCASN1Integer_readIntegerWithBSDataInput_(objDataInput);
    case BCASN1Primitive_TAG_OBJECT_IDENTIFIER:
    return BCASN1ObjectIdentifier_readObjectIdentifierWithBSDataInput_(objDataInput);
    case BCASN1Primitive_TAG_NULL:
    return new_BCASN1Null_init();
    case BCASN1Primitive_TAG_BIT_STRING:
    return BCASN1BitString_readBitStringWithBSDataInput_(objDataInput);
    case BCASN1Primitive_TAG_OCTET_STRING:
    return BCASN1OctetString_readOctetStringWithBSDataInput_(objDataInput);
    default:
    @throw new_JavaIoIOException_initWithNSString_(JreStrcat("$I", @"Unsupported tag number #", tagNumber));
  }
}

void BCASN1_init(BCASN1 *self) {
  (void) NSObject_init(self);
}

BCASN1 *new_BCASN1_init() {
  BCASN1 *self = [BCASN1 alloc];
  BCASN1_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(BCASN1)
