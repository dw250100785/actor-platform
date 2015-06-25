//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core-crypto/src/main/java/org/bouncycastle/math/ec/WNafUtil.java
//


#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Math.h"
#include "java/lang/System.h"
#include "java/math/BigInteger.h"
#include "org/bouncycastle/math/ec/ECCurve.h"
#include "org/bouncycastle/math/ec/ECPoint.h"
#include "org/bouncycastle/math/ec/ECPointMap.h"
#include "org/bouncycastle/math/ec/PreCompInfo.h"
#include "org/bouncycastle/math/ec/WNafPreCompInfo.h"
#include "org/bouncycastle/math/ec/WNafUtil.h"

@interface OrgBouncycastleMathEcWNafUtil ()

+ (IOSByteArray *)trimWithByteArray:(IOSByteArray *)a
                            withInt:(jint)length;

+ (IOSIntArray *)trimWithIntArray:(IOSIntArray *)a
                          withInt:(jint)length;

+ (IOSObjectArray *)resizeTableWithOrgBouncycastleMathEcECPointArray:(IOSObjectArray *)a
                                                             withInt:(jint)length;

@end

static IOSIntArray *OrgBouncycastleMathEcWNafUtil_DEFAULT_WINDOW_SIZE_CUTOFFS_;
J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleMathEcWNafUtil, DEFAULT_WINDOW_SIZE_CUTOFFS_, IOSIntArray *)

static IOSByteArray *OrgBouncycastleMathEcWNafUtil_EMPTY_BYTES_;
J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleMathEcWNafUtil, EMPTY_BYTES_, IOSByteArray *)

static IOSIntArray *OrgBouncycastleMathEcWNafUtil_EMPTY_INTS_;
J2OBJC_STATIC_FIELD_GETTER(OrgBouncycastleMathEcWNafUtil, EMPTY_INTS_, IOSIntArray *)

__attribute__((unused)) static IOSByteArray *OrgBouncycastleMathEcWNafUtil_trimWithByteArray_withInt_(IOSByteArray *a, jint length);

__attribute__((unused)) static IOSIntArray *OrgBouncycastleMathEcWNafUtil_trimWithIntArray_withInt_(IOSIntArray *a, jint length);

__attribute__((unused)) static IOSObjectArray *OrgBouncycastleMathEcWNafUtil_resizeTableWithOrgBouncycastleMathEcECPointArray_withInt_(IOSObjectArray *a, jint length);

J2OBJC_INITIALIZED_DEFN(OrgBouncycastleMathEcWNafUtil)

NSString *OrgBouncycastleMathEcWNafUtil_PRECOMP_NAME_ = @"bc_wnaf";

@implementation OrgBouncycastleMathEcWNafUtil

+ (IOSIntArray *)generateCompactNafWithJavaMathBigInteger:(JavaMathBigInteger *)k {
  return OrgBouncycastleMathEcWNafUtil_generateCompactNafWithJavaMathBigInteger_(k);
}

+ (IOSIntArray *)generateCompactWindowNafWithInt:(jint)width
                          withJavaMathBigInteger:(JavaMathBigInteger *)k {
  return OrgBouncycastleMathEcWNafUtil_generateCompactWindowNafWithInt_withJavaMathBigInteger_(width, k);
}

+ (IOSByteArray *)generateJSFWithJavaMathBigInteger:(JavaMathBigInteger *)g
                             withJavaMathBigInteger:(JavaMathBigInteger *)h {
  return OrgBouncycastleMathEcWNafUtil_generateJSFWithJavaMathBigInteger_withJavaMathBigInteger_(g, h);
}

+ (IOSByteArray *)generateNafWithJavaMathBigInteger:(JavaMathBigInteger *)k {
  return OrgBouncycastleMathEcWNafUtil_generateNafWithJavaMathBigInteger_(k);
}

+ (IOSByteArray *)generateWindowNafWithInt:(jint)width
                    withJavaMathBigInteger:(JavaMathBigInteger *)k {
  return OrgBouncycastleMathEcWNafUtil_generateWindowNafWithInt_withJavaMathBigInteger_(width, k);
}

+ (jint)getNafWeightWithJavaMathBigInteger:(JavaMathBigInteger *)k {
  return OrgBouncycastleMathEcWNafUtil_getNafWeightWithJavaMathBigInteger_(k);
}

+ (OrgBouncycastleMathEcWNafPreCompInfo *)getWNafPreCompInfoWithOrgBouncycastleMathEcECPoint:(OrgBouncycastleMathEcECPoint *)p {
  return OrgBouncycastleMathEcWNafUtil_getWNafPreCompInfoWithOrgBouncycastleMathEcECPoint_(p);
}

+ (OrgBouncycastleMathEcWNafPreCompInfo *)getWNafPreCompInfoWithOrgBouncycastleMathEcPreCompInfo:(id<OrgBouncycastleMathEcPreCompInfo>)preCompInfo {
  return OrgBouncycastleMathEcWNafUtil_getWNafPreCompInfoWithOrgBouncycastleMathEcPreCompInfo_(preCompInfo);
}

+ (jint)getWindowSizeWithInt:(jint)bits {
  return OrgBouncycastleMathEcWNafUtil_getWindowSizeWithInt_(bits);
}

+ (jint)getWindowSizeWithInt:(jint)bits
                withIntArray:(IOSIntArray *)windowSizeCutoffs {
  return OrgBouncycastleMathEcWNafUtil_getWindowSizeWithInt_withIntArray_(bits, windowSizeCutoffs);
}

+ (OrgBouncycastleMathEcECPoint *)mapPointWithPrecompWithOrgBouncycastleMathEcECPoint:(OrgBouncycastleMathEcECPoint *)p
                                                                              withInt:(jint)width
                                                                          withBoolean:(jboolean)includeNegated
                                                  withOrgBouncycastleMathEcECPointMap:(id<OrgBouncycastleMathEcECPointMap>)pointMap {
  return OrgBouncycastleMathEcWNafUtil_mapPointWithPrecompWithOrgBouncycastleMathEcECPoint_withInt_withBoolean_withOrgBouncycastleMathEcECPointMap_(p, width, includeNegated, pointMap);
}

+ (OrgBouncycastleMathEcWNafPreCompInfo *)precomputeWithOrgBouncycastleMathEcECPoint:(OrgBouncycastleMathEcECPoint *)p
                                                                             withInt:(jint)width
                                                                         withBoolean:(jboolean)includeNegated {
  return OrgBouncycastleMathEcWNafUtil_precomputeWithOrgBouncycastleMathEcECPoint_withInt_withBoolean_(p, width, includeNegated);
}

+ (IOSByteArray *)trimWithByteArray:(IOSByteArray *)a
                            withInt:(jint)length {
  return OrgBouncycastleMathEcWNafUtil_trimWithByteArray_withInt_(a, length);
}

+ (IOSIntArray *)trimWithIntArray:(IOSIntArray *)a
                          withInt:(jint)length {
  return OrgBouncycastleMathEcWNafUtil_trimWithIntArray_withInt_(a, length);
}

+ (IOSObjectArray *)resizeTableWithOrgBouncycastleMathEcECPointArray:(IOSObjectArray *)a
                                                             withInt:(jint)length {
  return OrgBouncycastleMathEcWNafUtil_resizeTableWithOrgBouncycastleMathEcECPointArray_withInt_(a, length);
}

- (instancetype)init {
  OrgBouncycastleMathEcWNafUtil_init(self);
  return self;
}

+ (void)initialize {
  if (self == [OrgBouncycastleMathEcWNafUtil class]) {
    OrgBouncycastleMathEcWNafUtil_DEFAULT_WINDOW_SIZE_CUTOFFS_ = [IOSIntArray newArrayWithInts:(jint[]){ 13, 41, 121, 337, 897, 2305 } count:6];
    OrgBouncycastleMathEcWNafUtil_EMPTY_BYTES_ = [IOSByteArray newArrayWithLength:0];
    OrgBouncycastleMathEcWNafUtil_EMPTY_INTS_ = [IOSIntArray newArrayWithLength:0];
    J2OBJC_SET_INITIALIZED(OrgBouncycastleMathEcWNafUtil)
  }
}

@end

IOSIntArray *OrgBouncycastleMathEcWNafUtil_generateCompactNafWithJavaMathBigInteger_(JavaMathBigInteger *k) {
  OrgBouncycastleMathEcWNafUtil_initialize();
  if ((URShift32([((JavaMathBigInteger *) nil_chk(k)) bitLength], 16)) != 0) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"'k' must have bitlength < 2^16");
  }
  if ([k signum] == 0) {
    return OrgBouncycastleMathEcWNafUtil_EMPTY_INTS_;
  }
  JavaMathBigInteger *_3k = [((JavaMathBigInteger *) nil_chk([k shiftLeftWithInt:1])) addWithJavaMathBigInteger:k];
  jint bits = [((JavaMathBigInteger *) nil_chk(_3k)) bitLength];
  IOSIntArray *naf = [IOSIntArray newArrayWithLength:RShift32(bits, 1)];
  JavaMathBigInteger *diff = [_3k xor__WithJavaMathBigInteger:k];
  jint highBit = bits - 1, length = 0, zeroes = 0;
  for (jint i = 1; i < highBit; ++i) {
    if (![((JavaMathBigInteger *) nil_chk(diff)) testBitWithInt:i]) {
      ++zeroes;
      continue;
    }
    jint digit = [k testBitWithInt:i] ? -1 : 1;
    *IOSIntArray_GetRef(naf, length++) = (LShift32(digit, 16)) | zeroes;
    zeroes = 1;
    ++i;
  }
  *IOSIntArray_GetRef(naf, length++) = (LShift32(1, 16)) | zeroes;
  if (naf->size_ > length) {
    naf = OrgBouncycastleMathEcWNafUtil_trimWithIntArray_withInt_(naf, length);
  }
  return naf;
}

IOSIntArray *OrgBouncycastleMathEcWNafUtil_generateCompactWindowNafWithInt_withJavaMathBigInteger_(jint width, JavaMathBigInteger *k) {
  OrgBouncycastleMathEcWNafUtil_initialize();
  if (width == 2) {
    return OrgBouncycastleMathEcWNafUtil_generateCompactNafWithJavaMathBigInteger_(k);
  }
  if (width < 2 || width > 16) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"'width' must be in the range [2, 16]");
  }
  if ((URShift32([((JavaMathBigInteger *) nil_chk(k)) bitLength], 16)) != 0) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"'k' must have bitlength < 2^16");
  }
  if ([k signum] == 0) {
    return OrgBouncycastleMathEcWNafUtil_EMPTY_INTS_;
  }
  IOSIntArray *wnaf = [IOSIntArray newArrayWithLength:[k bitLength] / width + 1];
  jint pow2 = LShift32(1, width);
  jint mask = pow2 - 1;
  jint sign = URShift32(pow2, 1);
  jboolean carry = NO;
  jint length = 0, pos = 0;
  while (pos <= [k bitLength]) {
    if ([k testBitWithInt:pos] == carry) {
      ++pos;
      continue;
    }
    k = [k shiftRightWithInt:pos];
    jint digit = [((JavaMathBigInteger *) nil_chk(k)) intValue] & mask;
    if (carry) {
      ++digit;
    }
    carry = ((digit & sign) != 0);
    if (carry) {
      digit -= pow2;
    }
    jint zeroes = length > 0 ? pos - 1 : pos;
    *IOSIntArray_GetRef(wnaf, length++) = (LShift32(digit, 16)) | zeroes;
    pos = width;
  }
  if (wnaf->size_ > length) {
    wnaf = OrgBouncycastleMathEcWNafUtil_trimWithIntArray_withInt_(wnaf, length);
  }
  return wnaf;
}

IOSByteArray *OrgBouncycastleMathEcWNafUtil_generateJSFWithJavaMathBigInteger_withJavaMathBigInteger_(JavaMathBigInteger *g, JavaMathBigInteger *h) {
  OrgBouncycastleMathEcWNafUtil_initialize();
  jint digits = JavaLangMath_maxWithInt_withInt_([((JavaMathBigInteger *) nil_chk(g)) bitLength], [((JavaMathBigInteger *) nil_chk(h)) bitLength]) + 1;
  IOSByteArray *jsf = [IOSByteArray newArrayWithLength:digits];
  JavaMathBigInteger *k0 = g, *k1 = h;
  jint j = 0, d0 = 0, d1 = 0;
  jint offset = 0;
  while ((d0 | d1) != 0 || [k0 bitLength] > offset || [k1 bitLength] > offset) {
    jint n0 = ((URShift32([k0 intValue], offset)) + d0) & 7, n1 = ((URShift32([k1 intValue], offset)) + d1) & 7;
    jint u0 = n0 & 1;
    if (u0 != 0) {
      u0 -= (n0 & 2);
      if ((n0 + u0) == 4 && (n1 & 3) == 2) {
        u0 = -u0;
      }
    }
    jint u1 = n1 & 1;
    if (u1 != 0) {
      u1 -= (n1 & 2);
      if ((n1 + u1) == 4 && (n0 & 3) == 2) {
        u1 = -u1;
      }
    }
    if ((LShift32(d0, 1)) == 1 + u0) {
      d0 ^= 1;
    }
    if ((LShift32(d1, 1)) == 1 + u1) {
      d1 ^= 1;
    }
    if (++offset == 30) {
      offset = 0;
      k0 = [k0 shiftRightWithInt:30];
      k1 = [k1 shiftRightWithInt:30];
    }
    *IOSByteArray_GetRef(jsf, j++) = (jbyte) ((LShift32(u0, 4)) | (u1 & (jint) 0xF));
  }
  if (jsf->size_ > j) {
    jsf = OrgBouncycastleMathEcWNafUtil_trimWithByteArray_withInt_(jsf, j);
  }
  return jsf;
}

IOSByteArray *OrgBouncycastleMathEcWNafUtil_generateNafWithJavaMathBigInteger_(JavaMathBigInteger *k) {
  OrgBouncycastleMathEcWNafUtil_initialize();
  if ([((JavaMathBigInteger *) nil_chk(k)) signum] == 0) {
    return OrgBouncycastleMathEcWNafUtil_EMPTY_BYTES_;
  }
  JavaMathBigInteger *_3k = [((JavaMathBigInteger *) nil_chk([k shiftLeftWithInt:1])) addWithJavaMathBigInteger:k];
  jint digits = [((JavaMathBigInteger *) nil_chk(_3k)) bitLength] - 1;
  IOSByteArray *naf = [IOSByteArray newArrayWithLength:digits];
  JavaMathBigInteger *diff = [_3k xor__WithJavaMathBigInteger:k];
  for (jint i = 1; i < digits; ++i) {
    if ([((JavaMathBigInteger *) nil_chk(diff)) testBitWithInt:i]) {
      *IOSByteArray_GetRef(naf, i - 1) = (jbyte) ([k testBitWithInt:i] ? -1 : 1);
      ++i;
    }
  }
  *IOSByteArray_GetRef(naf, digits - 1) = 1;
  return naf;
}

IOSByteArray *OrgBouncycastleMathEcWNafUtil_generateWindowNafWithInt_withJavaMathBigInteger_(jint width, JavaMathBigInteger *k) {
  OrgBouncycastleMathEcWNafUtil_initialize();
  if (width == 2) {
    return OrgBouncycastleMathEcWNafUtil_generateNafWithJavaMathBigInteger_(k);
  }
  if (width < 2 || width > 8) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(@"'width' must be in the range [2, 8]");
  }
  if ([((JavaMathBigInteger *) nil_chk(k)) signum] == 0) {
    return OrgBouncycastleMathEcWNafUtil_EMPTY_BYTES_;
  }
  IOSByteArray *wnaf = [IOSByteArray newArrayWithLength:[k bitLength] + 1];
  jint pow2 = LShift32(1, width);
  jint mask = pow2 - 1;
  jint sign = URShift32(pow2, 1);
  jboolean carry = NO;
  jint length = 0, pos = 0;
  while (pos <= [k bitLength]) {
    if ([k testBitWithInt:pos] == carry) {
      ++pos;
      continue;
    }
    k = [k shiftRightWithInt:pos];
    jint digit = [((JavaMathBigInteger *) nil_chk(k)) intValue] & mask;
    if (carry) {
      ++digit;
    }
    carry = ((digit & sign) != 0);
    if (carry) {
      digit -= pow2;
    }
    length += (length > 0) ? pos - 1 : pos;
    *IOSByteArray_GetRef(wnaf, length++) = (jbyte) digit;
    pos = width;
  }
  if (wnaf->size_ > length) {
    wnaf = OrgBouncycastleMathEcWNafUtil_trimWithByteArray_withInt_(wnaf, length);
  }
  return wnaf;
}

jint OrgBouncycastleMathEcWNafUtil_getNafWeightWithJavaMathBigInteger_(JavaMathBigInteger *k) {
  OrgBouncycastleMathEcWNafUtil_initialize();
  if ([((JavaMathBigInteger *) nil_chk(k)) signum] == 0) {
    return 0;
  }
  JavaMathBigInteger *_3k = [((JavaMathBigInteger *) nil_chk([k shiftLeftWithInt:1])) addWithJavaMathBigInteger:k];
  JavaMathBigInteger *diff = [((JavaMathBigInteger *) nil_chk(_3k)) xor__WithJavaMathBigInteger:k];
  return [((JavaMathBigInteger *) nil_chk(diff)) bitCount];
}

OrgBouncycastleMathEcWNafPreCompInfo *OrgBouncycastleMathEcWNafUtil_getWNafPreCompInfoWithOrgBouncycastleMathEcECPoint_(OrgBouncycastleMathEcECPoint *p) {
  OrgBouncycastleMathEcWNafUtil_initialize();
  return OrgBouncycastleMathEcWNafUtil_getWNafPreCompInfoWithOrgBouncycastleMathEcPreCompInfo_([((OrgBouncycastleMathEcECCurve *) nil_chk([((OrgBouncycastleMathEcECPoint *) nil_chk(p)) getCurve])) getPreCompInfoWithOrgBouncycastleMathEcECPoint:p withNSString:OrgBouncycastleMathEcWNafUtil_PRECOMP_NAME_]);
}

OrgBouncycastleMathEcWNafPreCompInfo *OrgBouncycastleMathEcWNafUtil_getWNafPreCompInfoWithOrgBouncycastleMathEcPreCompInfo_(id<OrgBouncycastleMathEcPreCompInfo> preCompInfo) {
  OrgBouncycastleMathEcWNafUtil_initialize();
  if ((preCompInfo != nil) && ([preCompInfo isKindOfClass:[OrgBouncycastleMathEcWNafPreCompInfo class]])) {
    return (OrgBouncycastleMathEcWNafPreCompInfo *) check_class_cast(preCompInfo, [OrgBouncycastleMathEcWNafPreCompInfo class]);
  }
  return new_OrgBouncycastleMathEcWNafPreCompInfo_init();
}

jint OrgBouncycastleMathEcWNafUtil_getWindowSizeWithInt_(jint bits) {
  OrgBouncycastleMathEcWNafUtil_initialize();
  return OrgBouncycastleMathEcWNafUtil_getWindowSizeWithInt_withIntArray_(bits, OrgBouncycastleMathEcWNafUtil_DEFAULT_WINDOW_SIZE_CUTOFFS_);
}

jint OrgBouncycastleMathEcWNafUtil_getWindowSizeWithInt_withIntArray_(jint bits, IOSIntArray *windowSizeCutoffs) {
  OrgBouncycastleMathEcWNafUtil_initialize();
  jint w = 0;
  for (; w < ((IOSIntArray *) nil_chk(windowSizeCutoffs))->size_; ++w) {
    if (bits < IOSIntArray_Get(windowSizeCutoffs, w)) {
      break;
    }
  }
  return w + 2;
}

OrgBouncycastleMathEcECPoint *OrgBouncycastleMathEcWNafUtil_mapPointWithPrecompWithOrgBouncycastleMathEcECPoint_withInt_withBoolean_withOrgBouncycastleMathEcECPointMap_(OrgBouncycastleMathEcECPoint *p, jint width, jboolean includeNegated, id<OrgBouncycastleMathEcECPointMap> pointMap) {
  OrgBouncycastleMathEcWNafUtil_initialize();
  OrgBouncycastleMathEcECCurve *c = [((OrgBouncycastleMathEcECPoint *) nil_chk(p)) getCurve];
  OrgBouncycastleMathEcWNafPreCompInfo *wnafPreCompP = OrgBouncycastleMathEcWNafUtil_precomputeWithOrgBouncycastleMathEcECPoint_withInt_withBoolean_(p, width, includeNegated);
  OrgBouncycastleMathEcECPoint *q = [((id<OrgBouncycastleMathEcECPointMap>) nil_chk(pointMap)) mapWithOrgBouncycastleMathEcECPoint:p];
  OrgBouncycastleMathEcWNafPreCompInfo *wnafPreCompQ = OrgBouncycastleMathEcWNafUtil_getWNafPreCompInfoWithOrgBouncycastleMathEcPreCompInfo_([((OrgBouncycastleMathEcECCurve *) nil_chk(c)) getPreCompInfoWithOrgBouncycastleMathEcECPoint:q withNSString:OrgBouncycastleMathEcWNafUtil_PRECOMP_NAME_]);
  OrgBouncycastleMathEcECPoint *twiceP = [((OrgBouncycastleMathEcWNafPreCompInfo *) nil_chk(wnafPreCompP)) getTwice];
  if (twiceP != nil) {
    OrgBouncycastleMathEcECPoint *twiceQ = [pointMap mapWithOrgBouncycastleMathEcECPoint:twiceP];
    [((OrgBouncycastleMathEcWNafPreCompInfo *) nil_chk(wnafPreCompQ)) setTwiceWithOrgBouncycastleMathEcECPoint:twiceQ];
  }
  IOSObjectArray *preCompP = [wnafPreCompP getPreComp];
  IOSObjectArray *preCompQ = [IOSObjectArray newArrayWithLength:((IOSObjectArray *) nil_chk(preCompP))->size_ type:OrgBouncycastleMathEcECPoint_class_()];
  for (jint i = 0; i < preCompP->size_; ++i) {
    (void) IOSObjectArray_Set(preCompQ, i, [pointMap mapWithOrgBouncycastleMathEcECPoint:IOSObjectArray_Get(preCompP, i)]);
  }
  [((OrgBouncycastleMathEcWNafPreCompInfo *) nil_chk(wnafPreCompQ)) setPreCompWithOrgBouncycastleMathEcECPointArray:preCompQ];
  if (includeNegated) {
    IOSObjectArray *preCompNegQ = [IOSObjectArray newArrayWithLength:preCompQ->size_ type:OrgBouncycastleMathEcECPoint_class_()];
    for (jint i = 0; i < preCompNegQ->size_; ++i) {
      (void) IOSObjectArray_Set(preCompNegQ, i, [((OrgBouncycastleMathEcECPoint *) nil_chk(IOSObjectArray_Get(preCompQ, i))) negate]);
    }
    [wnafPreCompQ setPreCompNegWithOrgBouncycastleMathEcECPointArray:preCompNegQ];
  }
  [c setPreCompInfoWithOrgBouncycastleMathEcECPoint:q withNSString:OrgBouncycastleMathEcWNafUtil_PRECOMP_NAME_ withOrgBouncycastleMathEcPreCompInfo:wnafPreCompQ];
  return q;
}

OrgBouncycastleMathEcWNafPreCompInfo *OrgBouncycastleMathEcWNafUtil_precomputeWithOrgBouncycastleMathEcECPoint_withInt_withBoolean_(OrgBouncycastleMathEcECPoint *p, jint width, jboolean includeNegated) {
  OrgBouncycastleMathEcWNafUtil_initialize();
  OrgBouncycastleMathEcECCurve *c = [((OrgBouncycastleMathEcECPoint *) nil_chk(p)) getCurve];
  OrgBouncycastleMathEcWNafPreCompInfo *wnafPreCompInfo = OrgBouncycastleMathEcWNafUtil_getWNafPreCompInfoWithOrgBouncycastleMathEcPreCompInfo_([((OrgBouncycastleMathEcECCurve *) nil_chk(c)) getPreCompInfoWithOrgBouncycastleMathEcECPoint:p withNSString:OrgBouncycastleMathEcWNafUtil_PRECOMP_NAME_]);
  IOSObjectArray *preComp = [((OrgBouncycastleMathEcWNafPreCompInfo *) nil_chk(wnafPreCompInfo)) getPreComp];
  if (preComp == nil) {
    preComp = [IOSObjectArray newArrayWithObjects:(id[]){ p } count:1 type:OrgBouncycastleMathEcECPoint_class_()];
  }
  jint preCompLen = ((IOSObjectArray *) nil_chk(preComp))->size_;
  jint reqPreCompLen = LShift32(1, JavaLangMath_maxWithInt_withInt_(0, width - 2));
  if (preCompLen < reqPreCompLen) {
    preComp = OrgBouncycastleMathEcWNafUtil_resizeTableWithOrgBouncycastleMathEcECPointArray_withInt_(preComp, reqPreCompLen);
    if (reqPreCompLen == 2) {
      (void) IOSObjectArray_Set(nil_chk(preComp), 1, [((OrgBouncycastleMathEcECPoint *) nil_chk(IOSObjectArray_Get(preComp, 0))) threeTimes]);
    }
    else {
      OrgBouncycastleMathEcECPoint *twiceP = [wnafPreCompInfo getTwice];
      if (twiceP == nil) {
        twiceP = [((OrgBouncycastleMathEcECPoint *) nil_chk(IOSObjectArray_Get(nil_chk(preComp), 0))) twice];
        [wnafPreCompInfo setTwiceWithOrgBouncycastleMathEcECPoint:twiceP];
      }
      for (jint i = preCompLen; i < reqPreCompLen; i++) {
        (void) IOSObjectArray_Set(nil_chk(preComp), i, [((OrgBouncycastleMathEcECPoint *) nil_chk(twiceP)) addWithOrgBouncycastleMathEcECPoint:IOSObjectArray_Get(preComp, i - 1)]);
      }
    }
    [c normalizeAllWithOrgBouncycastleMathEcECPointArray:preComp];
  }
  [wnafPreCompInfo setPreCompWithOrgBouncycastleMathEcECPointArray:preComp];
  if (includeNegated) {
    IOSObjectArray *preCompNeg = [wnafPreCompInfo getPreCompNeg];
    jint pos;
    if (preCompNeg == nil) {
      pos = 0;
      preCompNeg = [IOSObjectArray newArrayWithLength:reqPreCompLen type:OrgBouncycastleMathEcECPoint_class_()];
    }
    else {
      pos = preCompNeg->size_;
      if (pos < reqPreCompLen) {
        preCompNeg = OrgBouncycastleMathEcWNafUtil_resizeTableWithOrgBouncycastleMathEcECPointArray_withInt_(preCompNeg, reqPreCompLen);
      }
    }
    while (pos < reqPreCompLen) {
      (void) IOSObjectArray_Set(nil_chk(preCompNeg), pos, [((OrgBouncycastleMathEcECPoint *) nil_chk(IOSObjectArray_Get(nil_chk(preComp), pos))) negate]);
      ++pos;
    }
    [wnafPreCompInfo setPreCompNegWithOrgBouncycastleMathEcECPointArray:preCompNeg];
  }
  [c setPreCompInfoWithOrgBouncycastleMathEcECPoint:p withNSString:OrgBouncycastleMathEcWNafUtil_PRECOMP_NAME_ withOrgBouncycastleMathEcPreCompInfo:wnafPreCompInfo];
  return wnafPreCompInfo;
}

IOSByteArray *OrgBouncycastleMathEcWNafUtil_trimWithByteArray_withInt_(IOSByteArray *a, jint length) {
  OrgBouncycastleMathEcWNafUtil_initialize();
  IOSByteArray *result = [IOSByteArray newArrayWithLength:length];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(a, 0, result, 0, result->size_);
  return result;
}

IOSIntArray *OrgBouncycastleMathEcWNafUtil_trimWithIntArray_withInt_(IOSIntArray *a, jint length) {
  OrgBouncycastleMathEcWNafUtil_initialize();
  IOSIntArray *result = [IOSIntArray newArrayWithLength:length];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(a, 0, result, 0, result->size_);
  return result;
}

IOSObjectArray *OrgBouncycastleMathEcWNafUtil_resizeTableWithOrgBouncycastleMathEcECPointArray_withInt_(IOSObjectArray *a, jint length) {
  OrgBouncycastleMathEcWNafUtil_initialize();
  IOSObjectArray *result = [IOSObjectArray newArrayWithLength:length type:OrgBouncycastleMathEcECPoint_class_()];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(a, 0, result, 0, ((IOSObjectArray *) nil_chk(a))->size_);
  return result;
}

void OrgBouncycastleMathEcWNafUtil_init(OrgBouncycastleMathEcWNafUtil *self) {
  (void) NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleMathEcWNafUtil)
