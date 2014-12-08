//
//  DemoCAView.m
//  LearnLearnLearn
//
//  Created by maginawin on 14-12-8.
//  Copyright (c) 2014年 mycj.wwd. All rights reserved.
//

#import "DemoCAView.h"
#import <QuartzCore/QuartzCore.h>

@implementation DemoCAView

- (void)setupInstanceVariables{
    _ball = [[UIView alloc] initWithFrame:CGRectMake(20, 80, 20, 20)];
    _ball.backgroundColor = [UIColor blackColor];
    _box = [[UIView alloc] initWithFrame:CGRectMake(20, 120, 200, 200)];
    _box.backgroundColor = [UIColor redColor];
    [self addSubview:_ball];
    [self addSubview:_box];
}

- (void)animateColors{
    CATransition* trans = [CATransition animation];
    trans.type = kCATransitionReveal;
    trans.subtype = kCATransitionFromLeft;
    trans.duration = .5;
    [self.layer addAnimation:trans forKey:@"transition"];
    self.layer.backgroundColor = [UIColor blueColor].CGColor;
    
    CAKeyframeAnimation* animation = [CAKeyframeAnimation animation];
    animation.values = [NSArray arrayWithObjects:(id)_box.layer.backgroundColor, (id)[UIColor yellowColor].CGColor, (id)[UIColor greenColor].CGColor, (id)[UIColor blueColor].CGColor,nil];
    animation.duration = 3;
    animation.autoreverses = YES;
    [_box.layer addAnimation:animation forKey:@"backgroundColor"];
}

- (void)animateFlip{
    //创建基本的Y轴旋转动画
    CABasicAnimation* flip = [CABasicAnimation animationWithKeyPath:@"transform.rotation.y"];
    flip.toValue = [NSNumber numberWithDouble:-M_PI];
    //创建基本的绽放动画
    CABasicAnimation* scale = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    scale.duration = 0.5;
    scale.autoreverses = YES;
    //合并缩放和翻转动画,使之成为一个动画组
    CAAnimationGroup* group = [CAAnimationGroup animation];
    group.animations = [NSArray arrayWithObjects:flip, scale, nil];
    group.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    group.removedOnCompletion = NO;
    //把动画组添加到我们的层
    [self.layer addAnimation:group forKey:@"flip"];
}

- (void)animateRotate{
    //Set up a basic animation for rotation on z axis (spinning)
    CABasicAnimation* spin = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    //Set the value of the spin to 2 * pi, this is 1 complete rotation in radius
    spin.toValue = [NSNumber numberWithDouble:M_PI * 2];
    //Sping for a really long time...
    spin.repeatCount = 1e100;
    spin.duration = 1.5; //duration to animate a full revolution of 2*pi radians
    [_box.layer addAnimation:spin forKey:@"transform"];
}

- (void)animateDrop{
    //Set up our keyframe animation
    CAKeyframeAnimation* animation = [CAKeyframeAnimation animation];
    CGMutablePathRef aPath = CGPathCreateMutable();
    CGPathMoveToPoint(aPath, nil, 20, 40); //Origin point
    CGPathAddCurveToPoint(aPath, nil, 160, 30, 220, 220, 240, 380);
    animation.rotationMode = @"auto";
    animation.path = aPath;
    animation.duration = 1;
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
    [_ball.layer addAnimation:animation forKey:@"position"];
    CFRelease(aPath);
}

@end
