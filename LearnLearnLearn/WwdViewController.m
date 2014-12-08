//
//  WwdViewController.m
//  LearnLearnLearn
//
//  Created by maginawin on 14-12-8.
//  Copyright (c) 2014年 mycj.wwd. All rights reserved.
//

#import "WwdViewController.h"
#import "WWDPopView.h"

@interface WwdViewController ()

@end

@implementation WwdViewController

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

- (IBAction)popViewPressed:(id)sender {
//    if (_wwdPopView == nil) {
        [_wwdPopView initWwdPopView:self.view.frame.size addToView:self.view];
        NSLog(@"popview");
//    }
}
@end
