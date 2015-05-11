//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/NotificationProvider.java
//

#ifndef _AMNotificationProvider_H_
#define _AMNotificationProvider_H_

#include "J2ObjC_header.h"

@class AMMessenger;
@protocol JavaUtilList;

@protocol AMNotificationProvider < NSObject, JavaObject >

- (void)onMessageArriveInAppWithAMMessenger:(AMMessenger *)messenger;

- (void)onNotificationWithAMMessenger:(AMMessenger *)messenger
                     withJavaUtilList:(id<JavaUtilList>)topNotifications
                              withInt:(jint)messagesCount
                              withInt:(jint)conversationsCount
                          withBoolean:(jboolean)silentUpdate
                          withBoolean:(jboolean)isInApp;

- (void)hideAllNotifications;

@end

J2OBJC_EMPTY_STATIC_INIT(AMNotificationProvider)

J2OBJC_TYPE_LITERAL_HEADER(AMNotificationProvider)

#define ImActorModelNotificationProvider AMNotificationProvider

#endif // _AMNotificationProvider_H_
