//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/DeviceCategory.java
//

#ifndef _AMDeviceCategory_H_
#define _AMDeviceCategory_H_

#include "J2ObjC_header.h"
#include "java/lang/Enum.h"

typedef NS_ENUM(NSUInteger, AMDeviceCategory) {
  AMDeviceCategory_UNKNOWN = 0,
  AMDeviceCategory_DESKTOP = 1,
  AMDeviceCategory_MOBILE = 2,
};

@interface AMDeviceCategoryEnum : JavaLangEnum < NSCopying >

#pragma mark Package-Private

+ (IOSObjectArray *)values;
FOUNDATION_EXPORT IOSObjectArray *AMDeviceCategoryEnum_values();

+ (AMDeviceCategoryEnum *)valueOfWithNSString:(NSString *)name;
FOUNDATION_EXPORT AMDeviceCategoryEnum *AMDeviceCategoryEnum_valueOfWithNSString_(NSString *name);

- (id)copyWithZone:(NSZone *)zone;

@end

J2OBJC_STATIC_INIT(AMDeviceCategoryEnum)

FOUNDATION_EXPORT AMDeviceCategoryEnum *AMDeviceCategoryEnum_values_[];

#define AMDeviceCategoryEnum_UNKNOWN AMDeviceCategoryEnum_values_[AMDeviceCategory_UNKNOWN]
J2OBJC_ENUM_CONSTANT_GETTER(AMDeviceCategoryEnum, UNKNOWN)

#define AMDeviceCategoryEnum_DESKTOP AMDeviceCategoryEnum_values_[AMDeviceCategory_DESKTOP]
J2OBJC_ENUM_CONSTANT_GETTER(AMDeviceCategoryEnum, DESKTOP)

#define AMDeviceCategoryEnum_MOBILE AMDeviceCategoryEnum_values_[AMDeviceCategory_MOBILE]
J2OBJC_ENUM_CONSTANT_GETTER(AMDeviceCategoryEnum, MOBILE)

J2OBJC_TYPE_LITERAL_HEADER(AMDeviceCategoryEnum)

typedef AMDeviceCategoryEnum ImActorModelDeviceCategoryEnum;

#endif // _AMDeviceCategory_H_
