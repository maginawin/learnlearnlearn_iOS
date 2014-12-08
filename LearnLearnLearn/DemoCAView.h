//
//  DemoCAView.h
//  LearnLearnLearn
//
//  Created by maginawin on 14-12-8.
//  Copyright (c) 2014年 mycj.wwd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DemoCAView : UIView

@property (nonatomic, strong) UIView* ball;
@property (nonatomic, strong) UIView* box;

- (void)setupInstanceVariables;
- (void)animateColors;
- (void)animateFlip;
- (void)animateRotate;
- (void)animateDrop;

@end
