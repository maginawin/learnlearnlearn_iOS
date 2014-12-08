//
//  CoreAnimation2ViewController.m
//  LearnLearnLearn
//
//  Created by maginawin on 14-12-8.
//  Copyright (c) 2014年 mycj.wwd. All rights reserved.
//

#import "CoreAnimation2ViewController.h"

@interface CoreAnimation2ViewController ()

@end

@implementation CoreAnimation2ViewController

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
    animation.values = [NSArray arrayWithObjects:(id)self.view.layer.backgroundColor, (id)[UIColor yellowColor].CGColor, (id)[UIColor greenColor].CGColor, (id)[UIColor grayColor].CGColor, (id)[UIColor blueColor].CGColor, nil];
    animation.duration = 4;
    animation.autoreverses = YES;
    [self.view.layer addAnimation:animation forKey:@"backgroundColor"];
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
