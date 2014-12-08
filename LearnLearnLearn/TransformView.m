//
//  TransformView.m
//  LearnLearnLearn
//
//  Created by maginawin on 14-12-8.
//  Copyright (c) 2014年 mycj.wwd. All rights reserved.
//

#import "TransformView.h"

@implementation TransformView

- (void)drawRect:(CGRect)rect{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextSetRGBFillColor(ctx, 1, 0, 0, 0.3);
    CGContextTranslateCTM(ctx, -40, 200);
    for (int i = 0; i < 50; i++) {
        CGContextTranslateCTM(ctx, 50, 50);
        CGContextScaleCTM(ctx, 0.93, 0.93);
        CGContextRotateCTM(ctx, -M_PI/10);
        CGContextFillRect(ctx, CGRectMake(0, 0, 150, 75));
    }
}

@end
