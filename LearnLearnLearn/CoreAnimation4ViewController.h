//
//  CoreAnimation4ViewController.h
//  LearnLearnLearn
//
//  Created by maginawin on 14-12-8.
//  Copyright (c) 2014年 mycj.wwd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "DemoCAView.h"

@interface CoreAnimation4ViewController : UIViewController
@property (strong, nonatomic) IBOutlet DemoCAView *baseView;
- (IBAction)colorsPressed:(id)sender;
- (IBAction)rotatePressed:(id)sender;
- (IBAction)flipPressed:(id)sender;
- (IBAction)dropPressed:(id)sender;

@end
