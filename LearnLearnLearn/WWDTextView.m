//
//  WWDTextView.m
//  LearnLearnLearn
//
//  Created by maginawin on 14-12-8.
//  Copyright (c) 2014年 mycj.wwd. All rights reserved.
//

//绘制文本
#import "WWDTextView.h"

@implementation WWDTextView

- (void)setScaleRate:(CGFloat)scaleRate{
    if (_scaleRate != scaleRate) {
        _scaleRate = scaleRate;
        [self setNeedsDisplay]; //通知控件重绘自己
    }
}

- (void)setRotateAngle:(CGFloat)rotateAngle{
    if (_rotateAngle != rotateAngle) {
        _rotateAngle = rotateAngle;
        [self setNeedsDisplay];
    }
}

- (void)drawRect:(CGRect)rect{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextSetCharacterSpacing(ctx, 4); //设置字符间距
    CGContextSetRGBFillColor(ctx, 1, 0, 1, 1); //设置填充颜色
    CGContextSetRGBStrokeColor(ctx, 0, 0, 1, 1); //设置线条颜色
    CGContextSetTextDrawingMode(ctx, kCGTextFill); //设置使用填充模式绘制文字
    
    //绘制文字
    NSString* drawText = @"绘制文字";
    [drawText drawAtPoint:CGPointMake(10, 120) withAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIFont fontWithName:@"Arial Rounded MT Bold" size:45], NSFontAttributeName, [UIColor magentaColor], NSForegroundColorAttributeName, nil]]; //magenta 品红,洋红
    //设置使用描边模式绘制文字
    CGContextSetTextDrawingMode(ctx, kCGTextStroke);
    [drawText drawAtPoint:CGPointMake(10, 180) withAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIFont fontWithName:@"Heiti SC" size:40], NSFontAttributeName, [UIColor blueColor], NSForegroundColorAttributeName, nil]];
    //设置使用填充,描边模式绘制文字
    CGContextSetTextDrawingMode(ctx, kCGTextFillStroke);
    [drawText drawAtPoint:CGPointMake(10, 230) withAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIFont fontWithName:@"Heiti SC" size:50], NSFontAttributeName, [UIColor magentaColor], NSForegroundColorAttributeName, nil]];
    //定义一个垂直镜像的变换矩阵
//    CGAffineTransform yRevert = CGAffineTransformMake(1, 0, 0, -1, 0, 0);
//    //设置绘制文本的字体和字体大小
//    CGContextSetFontSize(ctx, 40);
//    CGContextSetFont(ctx, (CGFontRef)[UIFont fontWithName:@"Arial Rounded MT Bold" size:45]);
//    //为yRevert变换矩阵根据scaleRate添加缩放变换矩阵
//    CGAffineTransform scale =  CGAffineTransformScale(yRevert, self.scaleRate, self.scaleRate);
//    //为scale变换矩阵根据rotateAngle添加旋转变换矩阵
//    CGAffineTransform rotate = CGAffineTransformRotate(scale, M_PI * self.rotateAngle / 180);
//    CGContextSetTextMatrix(ctx, rotate);
//    [drawText drawAtPoint:CGPointMake(10, 400) withAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIFont fontWithName:@"Heiti SC" size:50], NSFontAttributeName, [UIColor magentaColor], NSForegroundColorAttributeName, nil]];
}
@end
