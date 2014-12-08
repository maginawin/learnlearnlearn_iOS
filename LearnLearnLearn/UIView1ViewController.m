//
//  UIView1ViewController.m
//  LearnLearnLearn
//
//  Created by maginawin on 14-12-8.
//  Copyright (c) 2014年 mycj.wwd. All rights reserved.
//

//UIView动画方法
/*
 setAnimationDelegate 动画委托的方法是基于animationWillStartSelector和animationDidStopSelector的值调用的,必须设置委托,        以便这些函数正常工作
 setAnimationWillStartSelector 当动画开始时在委托上调用selector
 setAnimationDidStopSelector 当动画结束时在委托上调用selector,如果你想执行一系列的动画,这个方法非常有用
 setAnimationDuration 动画块持续的时间,单位是秒
 setAnimationDelay 提交动画后延迟多少秒开始播放动画,延迟时间到了才会调用animationWillStart
 setAnimationCurve 动画曲线,可选项包括线性,慢进,慢出以及慢进慢出,默认值是UIViewAnimationCureEaseInOut
 setAnimationRepeatCount 动画区块重复播放的次数
 setAnimationRepeatAutoreverses 一个布尔值,指示动画结束时是否反向回到动画区块之前的状态
 setAnimationBeginsFromCurrentState 如果为Yes,并且你在一个正在播放的动画的对象上面提交一个新的动画,之前的动画将就地停止,转而播放新的动画,若为No,则先完成之前的动画再播放新的动画
 */

//UIView之间的动画
/*
 这是一个按钮的应用函数
 从frontView过渡到backView,从右边3D翻转动画
 - (void)flipToBack:(id)sender{
    [UIView transitionFromView:frontView toView:backView duration:1 options:UIViewAnimationOptionTransitionFlipFromRight completion:nil];
 }
 翻转动画的其他选项:
    UIViewAnimationOptionTransitionFlipFromLeft;
    UIViewAnimationOptionTransitionFlipFromRight;
    UIViewAnimationOptionTrasitionCurlUp;
    UIViewAnimationOptionTransitionCurlDown;
 */

//UIApplication中系统提供的动画
/*
 setStatusBarOrientation:animated: 设置状态条为指定的方向 
 setStatusBarHidden:withAnimation:显示或者隐藏状态条,可以使用的动画样式有UIStatusBarAnimationNone,UIStatusBarAnimationFade,UIStatusBarAnimationSlide //fade渐退
 setStatusBarStyle:animated: 改变状态条的样式,可选项有UIStatusBarStyleDefault,UIStatusBarStyleBlackTranslucent,UIStatusBarStyleBlackOpaque
 setStatusBarHidden:animated: 隐藏状态条,不过已经在3.0中废弃
 */

//UIViewController给了你对UIView和子视图完全的控制能力,可用的系统提供的动画
/*
 presentModalViewController:animated presentModalViewController:animated:
 dismissModalViewControllerAnimated: 关闭一个模式视图控制器,使用模式视图定义的动画样式
 setToolbarItems:animated: 播放往UIViewController关联的UIToolbar添加新的工具条项的动画(淡入淡出效果)
 */

//UITableViewRowAnimation的样式
//略

//UINavigationController可用的动画
/*
 pushViewController:animated: 压入一个新的UIViewController到导航栈
 popViewControllerAnimated: 从导航栈弹出一个UIViewController
 popToRootViewControllerAnimated: 弹出导航栈里出第一个根视图控制器的所有视图控制器
 popToViewController:animated: 弹出导航栈里指定视图控制器上面的所有视图控制器
 setViewControllers:animated: 把一组视图控制器加入到导航栈
 setNavigationBarHidden:animated: UINavigationBar隐藏状态的动画
 setToolbarHidden:animated: UIToolbar隐藏状态的动画
 */

#import "UIView1ViewController.h"

@interface UIView1ViewController ()

@end

@implementation UIView1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIView* box = [[UIView alloc]initWithFrame:CGRectMake(10, 110, 50, 50)];
    box.backgroundColor = [UIColor blueColor];
    [self.view addSubview:box];
    
    [UIView beginAnimations:@"box-animate" context:nil];
    [UIView setAnimationDuration:1];
    
    box.backgroundColor = [UIColor redColor];
    box.frame = CGRectMake(50, 150, 100, 100);
    box.alpha = 0.5;
    
    [UIView commitAnimations];
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
