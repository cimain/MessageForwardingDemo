//
//  NormalForwarding.m
//  RuntimeDemo
//
//  Created by ChenMan on 2018/5/1.
//  Copyright © 2018年 cimain. All rights reserved.
//

#import "NormalForwarding.h"

@implementation NormalForwarding

- (void)methodCrashHanding:(NSInvocation *)invocation
{
    NSLog(@"NormalForwarding---在类:%@中 未实现该方法:%@",NSStringFromClass([invocation.target class]),NSStringFromSelector(invocation.selector));
}

@end
