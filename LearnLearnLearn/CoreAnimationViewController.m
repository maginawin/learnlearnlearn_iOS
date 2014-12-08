//
//  CoreAnimationViewController.m
//  LearnLearnLearn
//
//  Created by maginawin on 14-12-8.
//  Copyright (c) 2014年 mycj.wwd. All rights reserved.
//

/*
 fromideatoapp.com/reference#core-animation获取CALayer可以添加动画的属性的完整列表以及教程和更多示例
 Core Animation层又叫做CAlayer
 
 Core Animation类型:
    CABasicAnimation 基本属性动画
    CAKeyframeAnimation 关键帧(关键步骤)动画
    CATransitionAnimation
 多个动画可以使用CAAnimationGroupo在组合在一起,再把这个组添加到CALayer
 
 隐式和显示动画
 CALayer实际上包含了一个表现层和一个模型层
    表现层用于往屏幕上显示层,并且为显示做了相应的优化
    模型层用于在内存中存储层的必要的信息
 如果某个动画是隐式的,意味着要添加动画的值同时存储在表现层和模型层
 如果某个动画是显式的,要添加动画的值只存储在表现层,不会改变模型层
 不执行其他的操作,显示动画播放完成之后,CALayer将还原到动画播放前的状态,国为模型层没有修改
 
 开始使用Core Animation以前,添加QuartzCore框架 #import <QuartzCore/QuartzCore.h>
 
 创建动画的3个步骤:
    1,创建一个CAAnimation或者CAAnimation子类的一个引用
    2,定义你的CAAnimation熟悉
    3,把你的动画赋给一个层
 一旦你把CAAnimation赋给了一个层,iOS自动在一个单独的线程中执行动画
 */

#import "CoreAnimationViewController.h"

@interface CoreAnimationViewController ()

@end

@implementation CoreAnimationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
