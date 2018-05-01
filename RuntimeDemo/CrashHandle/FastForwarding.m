//
//  FastForwarding.m
//  RuntimeDemo
//
//  Created by ChenMan on 2018/5/1.
//  Copyright © 2018年 cimain. All rights reserved.
//

#import "FastForwarding.h"

@implementation FastForwarding

//不需要在.h中声明，运行时会动态查找类中是否实现该方法
- (void)doSomething
{
    NSLog(@"FastForwarding的方法调用了,程序没有crash!!!");
}

@end
