//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-platform/actor-apps/core/src/main/java/im/actor/model/network/connection/AsyncConnection.java
//

#ifndef _AMAsyncConnection_H_
#define _AMAsyncConnection_H_

#include "J2ObjC_header.h"

@class AMConnectionEndpoint;
@class IOSByteArray;
@protocol AMAsyncConnectionInterface;

@interface AMAsyncConnection : NSObject

#pragma mark Public

- (instancetype)initWithEndpoint:(AMConnectionEndpoint *)endpoint
                   withInterface:(id<AMAsyncConnectionInterface>)connection;

- (void)doClose;

- (void)doConnect;

- (void)doSend:(IOSByteArray *)data;

#pragma mark Protected

- (AMConnectionEndpoint *)getEndpoint;

- (void)onClosed;

- (void)onConnected;

- (void)onReceived:(IOSByteArray *)data;

@end

J2OBJC_EMPTY_STATIC_INIT(AMAsyncConnection)

FOUNDATION_EXPORT void AMAsyncConnection_initWithEndpoint_withInterface_(AMAsyncConnection *self, AMConnectionEndpoint *endpoint, id<AMAsyncConnectionInterface> connection);

J2OBJC_TYPE_LITERAL_HEADER(AMAsyncConnection)

typedef AMAsyncConnection ImActorModelNetworkConnectionAsyncConnection;

#endif // _AMAsyncConnection_H_
