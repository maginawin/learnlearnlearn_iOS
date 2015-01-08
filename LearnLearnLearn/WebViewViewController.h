//
//  WebViewViewController.h
//  LearnLearnLearn
//
//  Created by maginawin on 14-12-15.
//  Copyright (c) 2014年 mycj.wwd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIWebView *webView;
- (IBAction)testLoadHtmlString:(id)sender;
- (IBAction)testLoadRequest:(id)sender;
- (IBAction)testLoadData:(id)sender;
@end
