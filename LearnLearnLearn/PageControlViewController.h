//
//  PageControlViewController.h
//  LearnLearnLearn
//
//  Created by maginawin on 14-12-15.
//  Copyright (c) 2014年 mycj.wwd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PageControlViewController : UIViewController<UIScrollViewDelegate>
@property (strong, nonatomic) UIView* page1;
@property (strong, nonatomic) UIView* page2;
@property (strong, nonatomic) UIView* page3;

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;
- (IBAction)changePage:(id)sender;

@end
