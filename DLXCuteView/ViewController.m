//
//  ViewController.m
//  DLXCuteView
//
//  Created by duanlingxiu on 15-4-2.
//  Copyright (c) 2015年 Fujian Ruijie Networks Co., Ltd. All rights reserved.
//


#import "ViewController.h"
#import "KYCuteView.h"

@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    KYCuteView *cuteView = [[KYCuteView alloc]initWithPoint:CGPointMake(25, 300) superView:self.view];
    cuteView.viscosity  = 12;
    cuteView.bubbleWidth = 35;
    cuteView.bubbleColor = [UIColor colorWithRed:0 green:0.722 blue:1 alpha:1];
    [cuteView setUp];
    [cuteView addGesture];
    [cuteView setDelegate:self];
    //注意：设置 'bubbleLabel.text' 一定要放在 '-setUp' 方法之后
    //Tips:When you set the 'bubbleLabel.text',you must set it after '-setUp'
    cuteView.bubbleLabel.text = @"13";
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void) viewDidAppear:(BOOL)animated{
    
    [super viewDidAppear:animated];
    NSLog(@"1");
}

-(void)onUnPlug{
    NSLog(@"拔掉了");
}

@end
