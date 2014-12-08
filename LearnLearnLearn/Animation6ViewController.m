//
//  Animation6ViewController.m
//  LearnLearnLearn
//
//  Created by maginawin on 14-12-8.
//  Copyright (c) 2014年 mycj.wwd. All rights reserved.
//

#import "Animation6ViewController.h"
#import <AssetsLibrary/AssetsLibrary.h>

@interface Animation6ViewController ()

@end

@implementation Animation6ViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    if (_ic == nil) {
        _ic = [[UIImageView alloc] initWithImage:[self drawImage:self.view.frame.size]];
        [self.view addSubview:_ic];
        NSLog(@"draw");
    }
    
}

- (UIImage*)drawImage:(CGSize)size{
    UIGraphicsBeginImageContext(size); //创建内存中的图片
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(ctx, 8);
    //开始向内存中绘制图形
    CGContextSetRGBStrokeColor(ctx, 0, 1, 0, 1);
    CGContextStrokeRect(ctx, CGRectMake(30, 130, 120, 60));
    CGContextSetRGBFillColor(ctx, 1, 1, 0, 1);
    CGContextFillRect(ctx, CGRectMake(180, 130, 120, 60));
    CGContextSetRGBStrokeColor(ctx, 0, 1, 1, 1);
    //绘制一个椭圆
    CGContextStrokeEllipseInRect(ctx, CGRectMake(30, 220, 120, 60));
//    CGContextFillEllipseInRect(ctx, CGRectMake(180, 220, 120, 60));
    //获取该绘图ctx中的图片
    UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
    //结束绘图
    UIGraphicsEndImageContext();
    //获取当前就用路径中Documents目录下的指定文件名对应的文件路径
//    NSString* path = [[NSHomeDirectory() stringByAppendingPathComponent:@"Documents"]stringByAppendingPathComponent:@"newPng.png"];
    //保存PNG图片
//    [UIImagePNGRepresentation(newImage) writeToFile:path atomically:YES];
    //将照片写入相册
    ALAssetsLibrary* libray = [[ALAssetsLibrary alloc]init];
    [libray writeImageToSavedPhotosAlbum:[newImage CGImage] orientation:(ALAssetOrientation)[newImage imageOrientation] completionBlock:nil];
    return newImage;
}

@end
