//
//  ViewController.m
//  TrendsTextView
//
//  Created by Mac on 15/10/9.
//  Copyright © 2015年 djj. All rights reserved.
//

#import "ViewController.h"
#import "TrendsTextView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    TrendsTextView *textView = [TrendsTextView getTrendsTextView];
    [self.view addSubview:textView];
    [textView upward]; //选择向上弹
    textView.frame = CGRectMake(20, 100, 200, 30);

    //设置边框
    textView.layer.masksToBounds = YES;
    textView.layer.borderWidth = 1;
    textView.layer.borderColor = [UIColor grayColor].CGColor;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
