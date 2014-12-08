//
//  WWDPopView.m
//  LearnLearnLearn
//
//  Created by maginawin on 14-12-8.
//  Copyright (c) 2014年 mycj.wwd. All rights reserved.
//

#import "WWDPopView.h"

@implementation WWDPopView

- (void)initWwdPopView:(CGSize)size addToView:(UIView*)view{
    _backgroundView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, size.width, size.height)];
    _backgroundView.backgroundColor = [UIColor colorWithRed:100/255.0 green:100/255.0 blue:100/255.0 alpha:0.5];
    UIButton* remove = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100.0f, 44.0f)];
    [remove setTitle:@"remove" forState:UIControlStateNormal];
    [remove setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [remove addTarget:self action:@selector(removePressed) forControlEvents:UIControlEventTouchUpInside];
    _frontView = [[UIView alloc] initWithFrame:CGRectMake(size.width / 4, size.height / 3, size.width / 2, size.height / 3)];
    _frontView.backgroundColor = [UIColor whiteColor];
    
    [_frontView addSubview:remove];
    [_backgroundView addSubview:_frontView];
    [view addSubview:_backgroundView];
}

- (void)removePressed{
    [self removePopViewFrom:nil];
}

- (void)removePopViewFrom:(UIView*)view{
    [_backgroundView removeFromSuperview];
    [_frontView removeFromSuperview];
}

@end
