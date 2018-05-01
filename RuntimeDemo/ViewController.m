//
//  ViewController.m
//  RuntimeDemo
//
//  Created by ChenMan on 2018/5/1.
//  Copyright © 2018年 cimain. All rights reserved.
//

#import "ViewController.h"

#import "Test1ViewController.h"
#import "Test2ViewController.h"
#import "Test3ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    self.title = @"ViewController";
    
    //实例化一个button1,跳转
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    button1.frame = CGRectMake(50, 150, 250, 100);
    button1.backgroundColor = [UIColor blueColor];
    [button1 setTitle:@"跳转Test1ViewController" forState:UIControlStateNormal];
    [button1 addTarget:self
                action:@selector(toNextPage1)
      forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
    
    //实例化一个button2,跳转
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    button2.frame = CGRectMake(50, 300, 250, 100);
    button2.backgroundColor = [UIColor blueColor];
    [button2 setTitle:@"跳转Test2ViewController" forState:UIControlStateNormal];
    [button2 addTarget:self
               action:@selector(toNextPage2)
     forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button2];
    
    //实例化一个button3,跳转
    UIButton *button3 = [UIButton buttonWithType:UIButtonTypeCustom];
    button3.frame = CGRectMake(50, 450, 250, 100);
    button3.backgroundColor = [UIColor blueColor];
    [button3 setTitle:@"跳转Test3ViewController" forState:UIControlStateNormal];
    [button3 addTarget:self
               action:@selector(toNextPage3)
     forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button3];
}

- (void)toNextPage1{
    Test1ViewController *test1VC = [[Test1ViewController alloc] init];
    [self.navigationController pushViewController:test1VC animated:YES];
}

- (void)toNextPage2{
    Test2ViewController *test2VC = [[Test2ViewController alloc] init];
    [self.navigationController pushViewController:test2VC animated:YES];
}

- (void)toNextPage3{
    Test3ViewController *test3VC = [[Test3ViewController alloc] init];
    [self.navigationController pushViewController:test3VC animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
