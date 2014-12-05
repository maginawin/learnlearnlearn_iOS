//
//  Geometry.m
//  LearnLearnLearn
//
//  Created by maginawin on 14-12-5.
//  Copyright (c) 2014年 mycj.wwd. All rights reserved.
//

#import "Geometry.h"

@implementation Geometry //几何

- (void)drawRect:(CGRect)rect{
    CGContextRef ctx = UIGraphicsGetCurrentContext(); //获取绘制上下文
    CGContextSetLineWidth(ctx, 16); //设置线宽
    CGContextSetRGBStrokeColor(ctx, 0, 1, 0, 1);
    
    // ------ 绘制3个线段测试端点状态 ------
    //定义4个点绘制线段
    const CGPoint points1[] = {CGPointMake(10, 120), CGPointMake(100, 120), CGPointMake(100, 120), CGPointMake(20, 150)};
    //绘制线段,默认不绘制端点
    CGContextStrokeLineSegments(ctx, points1, 4);
    
    CGContextSetLineCap(ctx, kCGLineCapSquare); //设置方形端点
    const CGPoint points2[] = {CGPointMake(130, 120), CGPointMake(200, 120), CGPointMake(200, 120), CGPointMake(120, 150)};
    CGContextStrokeLineSegments(ctx, points2, 4);
    
    CGContextSetLineCap(ctx, kCGLineCapRound); //设置圆形端点
    const CGPoint points3[] = {CGPointMake(240, 120), CGPointMake(300, 120), CGPointMake(300, 120), CGPointMake(220, 150)};
    CGContextStrokeLineSegments(ctx, points3, 4);
    
    // ------ 绘制3个线段测试点线模式------
    CGContextSetLineCap(ctx, kCGLineCapButt); //设置线段的端点状态
    CGContextSetLineWidth(ctx, 10); //设置线宽
    CGFloat patterns1[] = {6, 10};
    
    CGContextSetLineDash(ctx, 0, patterns1, 1); //设置点线模式: 实线宽6, 间距宽10
    const CGPoint points4[] = {CGPointMake(40, 165), CGPointMake(280, 165)}; //定义2个点绘制线段
    CGContextStrokeLineSegments(ctx, points4, 2);
    
    CGContextSetLineDash(ctx, 3, patterns1, 1);//设置点线模式: 实线宽6, 间距宽10, 但是第1个线段宽为20
    const CGPoint points5[] = {CGPointMake(40, 185), CGPointMake(280, 185)};
    CGContextStrokeLineSegments(ctx, points5, 1);
    
    CGFloat patterns2[] = {5, 1, 4, 1, 3, 1, 2, 1, 1, 1, 1, 2, 1, 3, 1, 4, 1, 5};
    CGContextSetLineDash(ctx, 0, patterns2, 18);
    const CGPoint points6[] = {CGPointMake(40, 205), CGPointMake(280, 205)};
    CGContextStrokeLineSegments(ctx, points6, 2);
    
    // ------ 填充矩形 ------
    //设置线条颜色
    CGContextSetStrokeColorWithColor(ctx, [UIColor blueColor].CGColor);
    CGContextSetLineWidth(ctx, 14); //设置线条宽度
    CGContextSetFillColorWithColor(ctx, [UIColor redColor].CGColor); //设置填充颜色
    CGContextFillRect(ctx, CGRectMake(30, 220, 120, 60)); //填充一个矩形
    
    //设置填充颜色
    CGContextSetFillColorWithColor(ctx, [UIColor yellowColor].CGColor);
    CGContextFillRect(ctx, CGRectMake(80, 260, 120, 40));
    
    // ------ 绘制矩形边框 ------
    CGContextSetLineDash(ctx, 0, 0, 0); //取消点线模式设置
    CGContextStrokeRect(ctx, CGRectMake(30, 230, 120, 60)); //绘制一个矩形边框
    //设置线条颜色
    CGContextSetStrokeColorWithColor(ctx, [UIColor purpleColor].CGColor);
    CGContextSetLineJoin(ctx, kCGLineJoinRound); //设置线条连接点的形状
    CGContextStrokeRect(ctx, CGRectMake(80, 260, 120, 60));
    
    CGContextSetRGBStrokeColor(ctx, 1.0, 0, 1.0, 1.0); //设置线条颜色
    CGContextStrokeRect(ctx, CGRectMake(130, 290, 120, 60));
    
    CGContextSetRGBStrokeColor(ctx, 0, 1, 1, 1);
    // ------ 下面绘制和填充一个椭圆 ------
    //绘制一个椭圆
    CGContextStrokeEllipseInRect(ctx, CGRectMake(30, 320, 120, 60));
    
    CGContextSetRGBFillColor(ctx, 1, 0, 1, 1); //设置填充颜色
    CGContextFillEllipseInRect(ctx, CGRectMake(180, 320, 120, 60)); //填充一个椭圆
}

@end
