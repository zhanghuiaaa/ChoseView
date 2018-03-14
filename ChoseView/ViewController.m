//
//  ViewController.m
//  ChoseView
//
//  Created by 骊蘅 on 2018/1/2.
//  Copyright © 2018年 骊蘅. All rights reserved.
//

#import "ViewController.h"
#import "SelectView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIButton * btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 100, 100)];
    btn.backgroundColor = [UIColor orangeColor];
    [btn setTitle:@"编辑" forState:0];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
}

- (void)btnClick{
    
    
    
    SelectView * selecView = [[SelectView alloc] initWithTitleArray:nil andShowCancle:YES];
    [self.view addSubview:selecView];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
