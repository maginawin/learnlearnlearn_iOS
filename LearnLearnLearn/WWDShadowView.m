//
//  WWDShadowView.m
//  LearnLearnLearn
//
//  Created by maginawin on 14-12-8.
//  Copyright (c) 2014年 mycj.wwd. All rights reserved.
//

#import "WWDShadowView.h"

@implementation WWDShadowView

- (void)drawRect:(CGRect)rect{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    //使用默认的阴影颜色,阴影向左上角投影,模糊度为5
    CGContextSetShadow(ctx, CGSizeMake(8, -6), 5);
    CGContextSetRGBFillColor(ctx, 1, 0, 1, 1);
    CGContextSetRGBStrokeColor(ctx, 0, 0, 1, 1);
    CGContextSetTextDrawingMode(ctx, kCGTextFill);
    NSString* drawText = @"绘制阴影";
    [drawText drawAtPoint:CGPointMake(10, 120) withAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIFont fontWithName:@"Arial Rounded MT Bole" size:45], NSFontAttributeName, [UIColor magentaColor], NSForegroundColorAttributeName, nil]];
    //设置使用描边模式绘制文字
    CGContextSetTextDrawingMode(ctx, kCGTextStroke);
    [drawText drawAtPoint:CGPointMake(10, 180) withAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIFont fontWithName:@"Heiti SC" size:40], NSFontAttributeName, [UIColor magentaColor], NSForegroundColorAttributeName, nil]];
    CGContextSetShadowWithColor(ctx, CGSizeMake(10, 8), 10, [UIColor redColor].CGColor);
    CGContextFillRect(ctx, CGRectMake(20, 250, 180, 80));
    CGContextSetRGBStrokeColor(ctx, 1, 0, 1, 1);
    CGContextStrokeRect(ctx, CGRectMake(30, 360, 180, 80));
}

@end
