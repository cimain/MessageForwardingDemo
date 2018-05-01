//
//  NSObject+CrashLogHandle.m
//  RuntimeDemo
//
//  Created by ChenMan on 2018/5/1.
//  Copyright © 2018年 cimain. All rights reserved.
//

#import "NSObject+CrashLogHandle.h"

@implementation NSObject (CrashLogHandle)

- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
    //方法签名
    return [NSMethodSignature signatureWithObjCTypes:"v@:@"];
}

- (void)forwardInvocation:(NSInvocation *)anInvocation {
    NSLog(@"NSObject+CrashLogHandle---在类:%@中 未实现该方法:%@",NSStringFromClass([anInvocation.target class]),NSStringFromSelector(anInvocation.selector));
}

@end
