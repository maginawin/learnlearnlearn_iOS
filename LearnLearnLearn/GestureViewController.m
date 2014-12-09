//
//  GestureViewController.m
//  LearnLearnLearn
//
//  Created by maginawin on 14-12-9.
//  Copyright (c) 2014年 mycj.wwd. All rights reserved.
//
/*
 -------UIGestureRecognizer的子类,6个手势识别器
 UITapGestureRecognizer 点击
 UIPinchGestureRecognizer 捏合
 UIRotationGestureRecognizer 2手指旋转
 UIPanGestureRecognizer 指定最小最大手指头数量拖曳时就会平移(拖曳)
 UISwipeGestureRecoginzer 轻扫,只能是x,y轴方向
 UILongPressGestureRecoginzer 长按
 为了让两个不同的手势识别器同时注册触摸事件,你必须通过实现gestureRecognizer:(第一个手势识别器)shouldRecognizerSimultaneouslyWithGestureRecognizer:(第二个手势识别器)
 
 -------手势识别器状态图解:Possible,Began,Changed,Ended,Cancelled,Failed,Recognized,Ended
 可能-->开始-->改变-->结束/取消
 可能-->识别
 可能-->失败
 
 */
#import "GestureViewController.h"

@interface GestureViewController ()

@end

@implementation GestureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //-------创建一个单次轻击UITapGestureRecoginzer
    UITapGestureRecognizer* oneTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleOneTap:)];
    oneTap.numberOfTapsRequired = 1; //轻击数量
    oneTap.numberOfTouchesRequired = 1; //手指数量
    [self.view addGestureRecognizer:oneTap];
    
    //-------创建一个捏合手势UIPinchGestureRecognizer
    UIPinchGestureRecognizer* pinch = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(handlePinch:)];
    [self.view addGestureRecognizer:pinch];
}

- (void)handleOneTap:(UITapGestureRecognizer*)sender{
    NSLog(@"UITapGestureRecognizer");
}

- (void)handlePinch:(UIPinchGestureRecognizer*)sender{
    NSLog(@"UIPinchGestureRecognizer");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
