//
//  JCUIViewViewController.m
//  LearnLearnLearn
//
//  Created by maginawin on 14-12-9.
//  Copyright (c) 2014年 mycj.wwd. All rights reserved.
//

/*
 -------探测UIView触摸事件之前,我们必须检查以下的属性:
    userInteractionEnabled
    multipleTouchEnabled
    前者为YES,允许注册触摸事件,后者设置为NO,这将导致每次只能看到一个触摸事件
 
 -------重载的UIView方法
 touchesBegan:withEvent:
 touchesMoved:withEvent:
 touchesEnded:withEvent:
 touchesCancelled:withEvent:
 这些方法提供了两个参数:NSSet(不同对象的集合),指实际的UITouch事件;UIEvent,一个提供了某个触摸动作所有触摸事件的对象
 */

#import "JCUIViewViewController.h"

@interface JCUIViewViewController ()

@end

@implementation JCUIViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    redBox = [[RedBoxWithTouches alloc]initWithFrame:CGRectMake(80, 80, 200, 200)];
//    redBox.backgroundColor = [UIColor redColor];
    [self.view addSubview:redBox];
}

- (void)viewDidAppear:(BOOL)animated{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:.5];
    redBox.center = self.view.center;
    [UIView commitAnimations];
    
    NSString* message = [NSString stringWithFormat:@"One Tap\nDouble Tap\nDragging/Panning"];
    UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"Recognizable" message:message delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];    
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
