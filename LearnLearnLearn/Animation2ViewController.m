//
//  Animation2ViewController.m
//  LearnLearnLearn
//
//  Created by maginawin on 14-12-5.
//  Copyright (c) 2014年 mycj.wwd. All rights reserved.
//

#import "Animation2ViewController.h"

@interface Animation2ViewController ()

@end

@implementation Animation2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _scrollView.contentSize = _contentView.frame.size;
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
