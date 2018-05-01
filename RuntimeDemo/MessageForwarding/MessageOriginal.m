//
//  MessageOriginal.m
//  RuntimeDemo
//
//  Created by ChenMan on 2018/5/1.
//  Copyright © 2018年 cimain. All rights reserved.
//

#import "MessageOriginal.h"
#import "MessageForwarding.h"
#import <objc/runtime.h>

@implementation MessageOriginal

#pragma mark - 0.Method
//- (void)sendMessage:(NSString *)word
//{
//    NSLog(@"normal way : send message = %@", word);
//}

#pragma mark - 1.Method Resolution
/// override resolveInstanceMethod or resolveClassMethod for changing sendMessage method implementation
//+ (BOOL)resolveInstanceMethod:(SEL)sel
//{
//    if (sel == @selector(sendMessage:)) {
//        class_addMethod([self class], sel, imp_implementationWithBlock(^(id self, NSString *word) {
//            NSLog(@"method resolution way : send message = %@", word);
//        }), "v@*");
//    }
//
//    return YES;
//}

#pragma mark - 2.Fast Forwarding
//- (id)forwardingTargetForSelector:(SEL)aSelector
//{
//    if (aSelector == @selector(sendMessage:)) {
//        return [MessageForwarding new];
//    }
//
//    return nil;
//}


#pragma mark - 3.Normal Forwarding
- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector
{
    NSMethodSignature *methodSignature = [super methodSignatureForSelector:aSelector];
    if (!methodSignature) {
        methodSignature = [NSMethodSignature signatureWithObjCTypes:"v@:*"];
    }
    return methodSignature;
}

- (void)forwardInvocation:(NSInvocation *)anInvocation
{
    MessageForwarding *messageForwarding = [MessageForwarding new];
    if ([messageForwarding respondsToSelector:anInvocation.selector]) {
        [anInvocation invokeWithTarget:messageForwarding];
    }else{
        [self doesNotRecognizeSelector:anInvocation.selector];
    }
}


@end
