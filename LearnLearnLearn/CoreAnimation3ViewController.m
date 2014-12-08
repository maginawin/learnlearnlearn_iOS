//
//  CoreAnimation3ViewController.m
//  LearnLearnLearn
//
//  Created by maginawin on 14-12-8.
//  Copyright (c) 2014年 mycj.wwd. All rights reserved.
//

#import "CoreAnimation3ViewController.h"

@interface CoreAnimation3ViewController ()

@end

@implementation CoreAnimation3ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated{
    CAKeyframeAnimation* animation = [CAKeyframeAnimation animation];
    CGMutablePathRef aPath = CGPathCreateMutable();
    CGPathMoveToPoint(aPath, nil, _testLabel.frame.origin.x, _testLabel.frame.origin.y); //起点
    CGPathAddCurveToPoint(aPath, nil, 160, 30, //控制点1
                          220, 220, //控制点2
                          240, 380);//终点
    animation.path = aPath;
    animation.duration = 2;
    animation.autoreverses = YES;
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn]; //EaseIn开始慢后面快
    animation.rotationMode = @"auto"; //设置为auto层将自动与路径保持相对一致的方向(相切)
    [_testLabel.layer addAnimation:animation forKey:@"position"];
    CFRelease(aPath); //释放内存
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
