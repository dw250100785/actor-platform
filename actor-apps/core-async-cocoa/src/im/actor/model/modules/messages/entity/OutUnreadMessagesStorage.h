//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/modules/messages/entity/OutUnreadMessagesStorage.java
//

#ifndef _ImActorModelModulesMessagesEntityOutUnreadMessagesStorage_H_
#define _ImActorModelModulesMessagesEntityOutUnreadMessagesStorage_H_

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/bser/BserObject.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;
@class JavaUtilArrayList;

@interface ImActorModelModulesMessagesEntityOutUnreadMessagesStorage : BSBserObject

#pragma mark Public

- (instancetype)init;

+ (ImActorModelModulesMessagesEntityOutUnreadMessagesStorage *)fromBytesWithByteArray:(IOSByteArray *)data;

- (JavaUtilArrayList *)getMessages;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesMessagesEntityOutUnreadMessagesStorage)

FOUNDATION_EXPORT ImActorModelModulesMessagesEntityOutUnreadMessagesStorage *ImActorModelModulesMessagesEntityOutUnreadMessagesStorage_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ImActorModelModulesMessagesEntityOutUnreadMessagesStorage_init(ImActorModelModulesMessagesEntityOutUnreadMessagesStorage *self);

FOUNDATION_EXPORT ImActorModelModulesMessagesEntityOutUnreadMessagesStorage *new_ImActorModelModulesMessagesEntityOutUnreadMessagesStorage_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesMessagesEntityOutUnreadMessagesStorage)

#endif // _ImActorModelModulesMessagesEntityOutUnreadMessagesStorage_H_
