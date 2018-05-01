//
//  UIScrollView+Forwarding.m
//  RuntimeDemo
//
//  Created by ChenMan on 2018/5/1.
//  Copyright © 2018年 cimain. All rights reserved.
//

#import "UIScrollView+Forwarding.h"
#import "NSObject+AdapterViewController.h"

@implementation UIScrollView (Forwarding)

- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector { // 1
    
    NSMethodSignature *signature = nil;
    if (aSelector == @selector(setContentInsetAdjustmentBehavior:)) {
        signature = [UIViewController instanceMethodSignatureForSelector:@selector(setAutomaticallyAdjustsScrollViewInsets:)];
    }else {
        signature = [super methodSignatureForSelector:aSelector];
    }
    return signature;
}

- (void)forwardInvocation:(NSInvocation *)anInvocation { // 2
    
    BOOL automaticallyAdjustsScrollViewInsets  = NO;
    UIViewController *topmostViewController = [self cm_topmostViewController];
    NSInvocation *viewControllerInvocation = [NSInvocation invocationWithMethodSignature:anInvocation.methodSignature]; // 3
    [viewControllerInvocation setTarget:topmostViewController];
    [viewControllerInvocation setSelector:@selector(setAutomaticallyAdjustsScrollViewInsets:)];
    [viewControllerInvocation setArgument:&automaticallyAdjustsScrollViewInsets atIndex:2]; // 4
    [viewControllerInvocation invokeWithTarget:topmostViewController]; // 5
}

@end
