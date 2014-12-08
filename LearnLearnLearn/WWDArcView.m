//
//  WWDArcView.m
//  LearnLearnLearn
//
//  Created by maginawin on 14-12-8.
//  Copyright (c) 2014年 mycj.wwd. All rights reserved.
//

#import "WWDArcView.h"

@implementation WWDArcView

- (void)drawRect: (CGRect)rect{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    for (int i = 0; i < 10; i++) {
        CGContextBeginPath(ctx);
        //添加一段圆弧,最后一个参数1代表逆时针,0代表顺时针
        CGContextAddArc(ctx, i * 25 + 10, i * 25 + 100, (i + 1) * 8, M_PI * 1.5, M_PI, 0);
        CGContextClosePath(ctx);
        CGContextSetRGBFillColor(ctx, 1, 0, 1, (10 - i) * 0.1);
        CGContextFillPath(ctx);
    }
}
@end
