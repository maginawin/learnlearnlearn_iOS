//
//  RedBoxWithTouches.m
//  LearnLearnLearn
//
//  Created by maginawin on 14-12-9.
//  Copyright (c) 2014年 mycj.wwd. All rights reserved.
//

#import "RedBoxWithTouches.h"

@implementation RedBoxWithTouches

- (id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        bgColor = [UIColor redColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    [bgColor set];
    CGContextFillRect(ctx, rect);
}

#pragma mark - Touch Events

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    NSLog(@"Touches Began");
    
    UITouch* touch = [touches anyObject];
    
    referencePoint = [touch locationInView:self];
    
    if ([bgColor isEqual:[UIColor redColor]]) {
        bgColor = [UIColor blueColor];
    }else{
        bgColor = [UIColor redColor];
    }
    [self setNeedsDisplay];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch* touch = [touches anyObject];
    CGPoint offset = [touch locationInView:[self superview]];
    CGRect newFrame = self.frame;
    newFrame.origin.x = offset.x - referencePoint.x;
    newFrame.origin.y = offset.y - referencePoint.y;
    
    self.frame = newFrame;
    bgColor = [UIColor greenColor];
    [self setNeedsDisplay];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch* touch = [touches anyObject];
    if ([touch tapCount] >=2) {
        bgColor = [UIColor blackColor];
        [self setNeedsDisplay];
    }
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:.5];
    self.center = self.superview.center;
    [UIView commitAnimations];
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event{
    NSLog(@"touches cancelled");
}

@end
