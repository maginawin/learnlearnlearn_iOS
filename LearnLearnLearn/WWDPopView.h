//
//  WWDPopView.h
//  LearnLearnLearn
//
//  Created by maginawin on 14-12-8.
//  Copyright (c) 2014年 mycj.wwd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WWDPopView : UIView

@property (nonatomic, strong) UIView* backgroundView;
@property (nonatomic, strong) UIView* frontView;

- (void)initWwdPopView:(CGSize)size addToView:(UIView*)view;

@end
