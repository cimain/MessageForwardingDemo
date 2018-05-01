//
//  NormalForwarding.h
//  RuntimeDemo
//
//  Created by ChenMan on 2018/5/1.
//  Copyright © 2018年 cimain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NormalForwarding : NSObject

- (void)methodCrashHanding:(NSInvocation *)invocation;

@end
