//
//  Animation1ViewController.m
//  LearnLearnLearn
//
//  Created by maginawin on 14-12-5.
//  Copyright (c) 2014年 mycj.wwd. All rights reserved.
//

#import "Animation1ViewController.h"

@interface Animation1ViewController ()

@end

@implementation Animation1ViewController
UIImageView* iv;
NSTimer* timer;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _scrollView.contentSize = _contentView.frame.size;
    iv = [[UIImageView alloc] initWithFrame:CGRectMake(0, 200, 41, 41)];
    iv.image = [UIImage animatedImageNamed:@"butterfly_f" duration:0.6];
    [self.view addSubview:iv];
    timer = [NSTimer scheduledTimerWithTimeInterval:0.2 target:self selector:@selector(changePos) userInfo:nil repeats:YES];
}

- (void)changePos{
    CGPoint curPos = iv.center;
    int y = arc4random() % 20 - 10;
    if (curPos.x > self.view.bounds.size.width) {
        curPos = CGPointMake(0, 200);
    }
    iv.center = CGPointMake(curPos.x + 4, curPos.y + y);
//    NSLog(@"%f,%f", curPos.x, self.view.bounds.size.width);
}

- (void)viewWillAppear:(BOOL)animated{
    [timer fire];
}

- (void)viewDidDisappear:(BOOL)animated{
    [timer invalidate];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
