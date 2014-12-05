//
//  AnimationViewController.m
//  LearnLearnLearn
//
//  Created by maginawin on 14-12-5.
//  Copyright (c) 2014年 mycj.wwd. All rights reserved.
//

#import "AnimationViewController.h"

@interface AnimationViewController ()

@end

@implementation AnimationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    [_scroller setFrame:CGRectMake(0, 0, vWidth, vHeight)];
    _scroller.scrollEnabled = YES;
    _scroller.contentSize = _contentView.bounds.size;
    _scroller.delegate = self;
}

- (void)viewDidAppear:(BOOL)animated{
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    NSLog(@"scrollViewDidScroll");
}
@end
