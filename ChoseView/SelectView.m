//
//  SelectView.m
//  ChoseView
//
//  Created by 骊蘅 on 2018/1/2.
//  Copyright © 2018年 骊蘅. All rights reserved.
//

#import "SelectView.h"
@interface SelectView()

@property (nonatomic, strong) NSArray   *titleArr;

@property (nonatomic, strong) UIView    *btnBgView;

@property (nonatomic,assign,getter=isShow) BOOL  show;
@end
@implementation SelectView

- (instancetype)initWithTitleArray:(NSArray *)titleArr andShowCancle:(BOOL)show{
    if (self = [super init]) {
        self.frame = [UIScreen mainScreen].bounds;
        
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hiddenSheet)];
        [self addGestureRecognizer:tap];
        
        [self setUpUI];
        
    }
    
    return self;
    
}

- (void)setUpUI{
    
    self.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.5f];
    
    // 按钮背景
    CGSize size = [UIScreen mainScreen].bounds.size;
    
    // 显示
    [UIView animateWithDuration:0.3 animations:^{
        CGRect frame = self.btnBgView.frame;

        self.btnBgView.frame = frame;
    }];
   
    
    
    
    [self addSubview:self.btnBgView];
    

}

- (void)hiddenSheet{
    
    [UIView animateWithDuration:0.3 animations:^{
        CGRect frame = self.btnBgView.frame;
        frame.origin.y = [UIScreen mainScreen].bounds.size.height;
        self.btnBgView.frame = frame;
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
    }];
}

- (UIView *)btnBgView{
    if (!_btnBgView) {
        _btnBgView = [[UIView alloc]initWithFrame:CGRectMake(20, 0, 300, 500)];
        _btnBgView.center = self.center;
        _btnBgView.backgroundColor = [UIColor whiteColor];
        
    }
    return _btnBgView;
}
@end
