//
//  CoreAnimation4ViewController.m
//  LearnLearnLearn
//
//  Created by maginawin on 14-12-8.
//  Copyright (c) 2014年 mycj.wwd. All rights reserved.
//
/*
 CATransition
 需要关心的只有两个属性:类型和子类型
 过渡类型决定了层要使用的过渡效果,有四个可用的选项
    1,kCATransitionFade 当前层淡出,位于其下的新的层显示出来,使用这个过渡类型,子类型将被忽略
    2,kCATransitionMoveIn 新的层以子类型指定的方向移入视图,新的层位于当前层的顶部
    3,kCATransitionPush 新的层以子类型指定的方向推进屏幕,而当前视图以子类型指定的方向的反方向推出屏幕
    4,kCATransitionReveal 当前层以子类型中指定的方向移出屏幕,而位于其下层的新的层显示在屏幕上
 过渡的子类型指定CATransition以什么方向移动,有四个可用的选项:
    1,kCATransitionFromRight;
    2,kCATransitionFromLeft;
    3,kCATransitionFromTop;
    4,kCATransitionFromBottom;
 */

#import "CoreAnimation4ViewController.h"

@interface CoreAnimation4ViewController ()

@end

@implementation CoreAnimation4ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.baseView setupInstanceVariables];
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

- (IBAction)colorsPressed:(id)sender {
    [self.baseView animateColors];
}

- (IBAction)rotatePressed:(id)sender {
    [self.baseView animateRotate];
}

- (IBAction)flipPressed:(id)sender {
    [self.baseView animateFlip];
}

- (IBAction)dropPressed:(id)sender {
    [self.baseView animateDrop];
}
@end
