//
//  HttpReachabilityViewController.h
//  LearnLearnLearn
//
//  Created by maginawin on 15-1-5.
//  Copyright (c) 2015年 mycj.wwd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SystemConfiguration/SystemConfiguration.h>

@interface HttpReachabilityViewController : UIViewController<NSURLConnectionDelegate, NSURLConnectionDataDelegate>
@property (weak, nonatomic) IBOutlet UITextField *siteField;
@property (weak, nonatomic) IBOutlet UITextView *showView;
- (IBAction)testNetStatus:(id)sender;
- (IBAction)testInternet:(id)sender;
- (IBAction)testWifi:(id)sender;

@end
