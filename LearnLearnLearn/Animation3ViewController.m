//
//  Animation3ViewController.m
//  LearnLearnLearn
//
//  Created by maginawin on 14-12-8.
//  Copyright (c) 2014年 mycj.wwd. All rights reserved.
//

#import "Animation3ViewController.h"
#import "WWDTextView.h"

@interface Animation3ViewController ()

@end

@implementation Animation3ViewController

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

- (IBAction)scaleChanged:(id)sender {
    ((WWDTextView*)self.view).scaleRate = ((UISlider*)sender).value;
}

- (IBAction)rotateChanged:(id)sender {
    ((WWDTextView*)self.view).rotateAngle = ((UISlider*)sender).value;
}
@end
