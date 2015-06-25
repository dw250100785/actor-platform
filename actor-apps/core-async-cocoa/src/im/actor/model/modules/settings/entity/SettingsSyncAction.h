//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/modules/settings/entity/SettingsSyncAction.java
//

#ifndef _ImActorModelModulesSettingsEntitySettingsSyncAction_H_
#define _ImActorModelModulesSettingsEntitySettingsSyncAction_H_

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/bser/BserObject.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

@interface ImActorModelModulesSettingsEntitySettingsSyncAction : BSBserObject

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)key
                    withNSString:(NSString *)value;

+ (ImActorModelModulesSettingsEntitySettingsSyncAction *)fromBytesWithByteArray:(IOSByteArray *)data;

- (NSString *)getKey;

- (NSString *)getValue;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesSettingsEntitySettingsSyncAction)

FOUNDATION_EXPORT ImActorModelModulesSettingsEntitySettingsSyncAction *ImActorModelModulesSettingsEntitySettingsSyncAction_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ImActorModelModulesSettingsEntitySettingsSyncAction_initWithNSString_withNSString_(ImActorModelModulesSettingsEntitySettingsSyncAction *self, NSString *key, NSString *value);

FOUNDATION_EXPORT ImActorModelModulesSettingsEntitySettingsSyncAction *new_ImActorModelModulesSettingsEntitySettingsSyncAction_initWithNSString_withNSString_(NSString *key, NSString *value) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesSettingsEntitySettingsSyncAction)

#endif // _ImActorModelModulesSettingsEntitySettingsSyncAction_H_
