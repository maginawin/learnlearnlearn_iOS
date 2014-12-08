//
//  CoreAnimation1ViewController.m
//  LearnLearnLearn
//
//  Created by maginawin on 14-12-8.
//  Copyright (c) 2014年 mycj.wwd. All rights reserved.
//

#import "CoreAnimation1ViewController.h"

@interface CoreAnimation1ViewController ()

@end

@implementation CoreAnimation1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
}

- (void)viewDidAppear:(BOOL)animated{
    CABasicAnimation* animation = [CABasicAnimation animation];
    animation.toValue = (id)[UIColor blueColor].CGColor;
    animation.duration = 2;
    animation.autoreverses = YES; //意味着背景色将在一秒钟过渡到蓝色,然后又自动在一秒钟过渡到原来的颜色
    [self.view.layer addAnimation:animation forKey:@"backgroundColor"]; //forKey的关键词应该和你想动画的属性相同,如果你要设置一个特定的属性,例如视图的宽度,你可以使用点语法引用结构中的子变量:bounds.size.width
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
