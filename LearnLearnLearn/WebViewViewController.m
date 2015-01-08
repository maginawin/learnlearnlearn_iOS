//
//  WebViewViewController.m
//  LearnLearnLearn
//
//  Created by maginawin on 14-12-15.
//  Copyright (c) 2014年 mycj.wwd. All rights reserved.
//

#import "WebViewViewController.h"

@interface WebViewViewController ()

@end

@implementation WebViewViewController

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

- (IBAction)testLoadHtmlString:(id)sender {
    NSString* htmlPath = [[NSBundle mainBundle]pathForResource:@"index" ofType:@"html"];
    NSURL* bundleUrl = [NSURL fileURLWithPath:[[NSBundle mainBundle]bundlePath]];
    NSError* error = nil;
    NSString* html = [[NSString alloc]initWithContentsOfFile:htmlPath encoding:NSUTF8StringEncoding error:&error];
    if (error == nil) {
        [self.webView loadHTMLString:html baseURL:bundleUrl];
    }
}

- (IBAction)testLoadRequest:(id)sender {
}

- (IBAction)testLoadData:(id)sender {
}
@end
