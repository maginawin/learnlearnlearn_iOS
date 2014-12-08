//
//  WWDTextView.h
//  LearnLearnLearn
//
//  Created by maginawin on 14-12-8.
//  Copyright (c) 2014年 mycj.wwd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WWDTextView : UIView

@property (nonatomic) CGFloat scaleRate;
@property (nonatomic) CGFloat rotateAngle;

- (void)setScaleRate:(CGFloat)scaleRate;
- (void)setRotateAngle:(CGFloat)rotateAngle;
@end
