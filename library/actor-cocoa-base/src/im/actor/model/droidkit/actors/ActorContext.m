//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/droidkit/actors/ActorContext.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/droidkit/actors/ActorContext.java"

#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/actors/ActorContext.h"
#include "im/actor/model/droidkit/actors/ActorRef.h"
#include "im/actor/model/droidkit/actors/ActorScope.h"
#include "im/actor/model/droidkit/actors/ActorSystem.h"
#include "im/actor/model/droidkit/actors/mailbox/ActorDispatcher.h"
#include "java/lang/Exception.h"

@interface DKActorContext () {
 @public
  DKActorScope *actorScope_;
}

@end

J2OBJC_FIELD_SETTER(DKActorContext, actorScope_, DKActorScope *)


#line 11
@implementation DKActorContext


#line 20
- (instancetype)initWithDKActorScope:(DKActorScope *)scope {
  DKActorContext_initWithDKActorScope_(self, scope);
  return self;
}


#line 29
- (DKActorRef *)getSelf {
  return [((DKActorScope *) nil_chk(actorScope_)) getActorRef];
}


#line 38
- (DKActorSystem *)getSystem {
  return [((DKActorScope *) nil_chk(actorScope_)) getActorSystem];
}


#line 48
- (DKActorRef *)sender {
  return [((DKActorScope *) nil_chk(actorScope_)) getSender];
}


#line 55
- (void)stopSelf {
  @try {
    [((DKActorDispatcher *) nil_chk([((DKActorScope *) nil_chk(actorScope_)) getDispatcher])) killGracefullyWithDKActorScope:actorScope_];
  }
  @catch (
#line 58
  JavaLangException *e) {
    [((JavaLangException *) nil_chk(e)) printStackTrace];
  }
}

@end


#line 20
void DKActorContext_initWithDKActorScope_(DKActorContext *self, DKActorScope *scope) {
  (void) NSObject_init(self);
  
#line 21
  self->actorScope_ = scope;
}


#line 20
DKActorContext *new_DKActorContext_initWithDKActorScope_(DKActorScope *scope) {
  DKActorContext *self = [DKActorContext alloc];
  DKActorContext_initWithDKActorScope_(self, scope);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(DKActorContext)
