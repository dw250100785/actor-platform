//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core-async/src/main/java/im/actor/model/jvm/threads/JavaThreadLocal.java
//

#ifndef _ImActorModelJvmThreadsJavaThreadLocal_H_
#define _ImActorModelJvmThreadsJavaThreadLocal_H_

#include "J2ObjC_header.h"
#include "im/actor/model/util/ThreadLocalCompat.h"

@interface ImActorModelJvmThreadsJavaThreadLocal : AMThreadLocalCompat

#pragma mark Public

- (instancetype)init;

- (id)get;

- (void)remove;

- (void)setWithId:(id)v;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelJvmThreadsJavaThreadLocal)

FOUNDATION_EXPORT void ImActorModelJvmThreadsJavaThreadLocal_init(ImActorModelJvmThreadsJavaThreadLocal *self);

FOUNDATION_EXPORT ImActorModelJvmThreadsJavaThreadLocal *new_ImActorModelJvmThreadsJavaThreadLocal_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelJvmThreadsJavaThreadLocal)

#endif // _ImActorModelJvmThreadsJavaThreadLocal_H_
