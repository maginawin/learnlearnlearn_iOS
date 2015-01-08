//
//  PageControlViewController.m
//  LearnLearnLearn
//
//  Created by maginawin on 14-12-15.
//  Copyright (c) 2014年 mycj.wwd. All rights reserved.
//

#import "PageControlViewController.h"

@interface PageControlViewController ()

@end

@implementation PageControlViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.scrollView.contentSize = CGSizeMake(self.view.frame.size.width * 3, self.scrollView.frame.size.height);
    self.scrollView.frame = self.view.frame;
    
    UIStoryboard* mainStroyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    UIViewController* page1ViewController = [mainStroyboard instantiateViewControllerWithIdentifier:@"page1"];
    self.page1 = page1ViewController.view;
    self.page1.frame = CGRectMake(0.0f, 0.0f, 320.0f, 420.0f);
    
    UIViewController* page2ViewController = [mainStroyboard instantiateViewControllerWithIdentifier:@"page2"];
    self.page2 = page2ViewController.view;
    self.page2.frame = CGRectMake(320.0f, 0.0f, 320.0f, 420.0f);
    
    UIViewController* page3ViewController = [mainStroyboard instantiateViewControllerWithIdentifier:@"page3"];
    self.page3 = page3ViewController.view;
    self.page3.frame = CGRectMake(2 * 320.0f, 0.0f, 320.0f, 420.0f);
    
    self.scrollView.delegate = self;
    
    [self.scrollView addSubview:self.page1];
    [self.scrollView addSubview:self.page2];
    [self.scrollView addSubview:self.page3];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    CGPoint offset = scrollView.contentOffset;
    self.pageControl.currentPage = offset.x / 320.0f;
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

- (IBAction)changePage:(id)sender {
    [UIView animateWithDuration:0.3f animations:^{
        int whickPage = self.pageControl.currentPage;
        self.scrollView.contentOffset = CGPointMake(320.0f * whickPage, 0.0f);
    }];
}
@end
