//
//  AnimationViewController.h
//  LearnLearnLearn
//
//  Created by maginawin on 14-12-5.
//  Copyright (c) 2014年 mycj.wwd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AnimationViewController : UIViewController<UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scroller;
@property (weak, nonatomic) IBOutlet UIView *contentView;

@end
