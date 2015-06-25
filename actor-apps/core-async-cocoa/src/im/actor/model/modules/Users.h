//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/modules/Users.java
//

#ifndef _ImActorModelModulesUsers_H_
#define _ImActorModelModulesUsers_H_

#include "J2ObjC_header.h"
#include "im/actor/model/modules/BaseModule.h"

@class AMMVVMCollection;
@class ImActorModelModulesModules;
@protocol AMCommand;
@protocol DKKeyValueEngine;

@interface ImActorModelModulesUsers : ImActorModelModulesBaseModule

#pragma mark Public

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)messenger;

- (id<AMCommand>)editMyNameWithNSString:(NSString *)newName;

- (id<AMCommand>)editNameWithInt:(jint)uid
                    withNSString:(NSString *)name;

- (id<DKKeyValueEngine>)getUsers;

- (AMMVVMCollection *)getUsersCollection;

- (void)resetModule;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesUsers)

FOUNDATION_EXPORT void ImActorModelModulesUsers_initWithImActorModelModulesModules_(ImActorModelModulesUsers *self, ImActorModelModulesModules *messenger);

FOUNDATION_EXPORT ImActorModelModulesUsers *new_ImActorModelModulesUsers_initWithImActorModelModulesModules_(ImActorModelModulesModules *messenger) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesUsers)

#endif // _ImActorModelModulesUsers_H_
