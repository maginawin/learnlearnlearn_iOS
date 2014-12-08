//
//  WwdViewController.h
//  LearnLearnLearn
//
//  Created by maginawin on 14-12-8.
//  Copyright (c) 2014年 mycj.wwd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WWDPopView.h"

@interface WwdViewController : UIViewController

@property (weak, nonatomic) IBOutlet WWDPopView *wwdPopView;

- (IBAction)popViewPressed:(id)sender;
@end
