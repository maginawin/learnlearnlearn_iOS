//
//  UISVViewController.m
//  LearnLearnLearn
//
//  Created by maginawin on 14-12-9.
//  Copyright (c) 2014年 mycj.wwd. All rights reserved.
//
/*
 -------UIScrollView滚动和平衡的管理属性
 
 scrollEnabled 是否允许滚动,若为NO,忽略所有的拖曳手势
 
 directionLockEnabled YES,强制滚动视图一次只能在一个方向上滚动,直到滚动结束
 
 scrollsToTop YES,允许用户在位于屏幕顶端的状态条上单击时,滚动视图滚动到最顶端
 
 pagingEnabled YES,内容的偏移自动定位在滚动视图边界的整数倍
 
 bounces YES,滚动视图允许用户滚动出内容视图边界一点点,但自动使用橡皮筋反弹效果的动画使之又回到边界
 
 alwaysBounceVertical, alwaysBounceHorizontal 竖直,水平方向的边界反弹
 
 indicatorStyle 滚动视图的滚动器,像滚动条,选择与你的应用程序环境形成鲜明对比的颜色
 
 showsHorizontalScrollIndicator 定义水平滚动指示器是否可见
 
 showVerticalScrollIndicator 竖直滚动指示器是否可见
 
 flashScrollIndicators 先播放滚动指示器,再使其消失在屏幕上(如果可用)
 
 attention:无论是实现UIScrollView或者UITableView,在你的UIViewController中的viewDidAppear:方法中调用flashScrollIndicators总是一个好主意,这告诉用户滚动视图包含了一些在当前屏幕之外的内容
 
 
 
 -------UIScrollView属性:滚动行为
 
 maximumZoomScale 这个浮点数决定了内容视图最大的缩放倍数,如果是2,而内容是100*100,那么最大尺寸是200*200
 
 minimumZoomScale 决定了内容视图最小的缩小倍数,如果该值是0.5,而内容是100*100,那么滚动视图缩小的最小尺寸是50*50
 
 bouncesZoom 决定了用户是否可以缩放视图都超过定义的范围,然后播放橡皮筋弹回效果的动画使视图回到最小或最大的缩放倍数
 
 contentSize CGSize类型,该属性定义了滚动视图内容的高度和宽度
 
 编程方式变焦: zoomToRect:animated或者setZoomScale:animated
 */

#import "UISVViewController.h"

@interface UISVViewController ()

@end

@implementation UISVViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _myImage = [[UIImageView alloc] initWithFrame:CGRectMake(80, 80, 40, 40)];
    _myImage.backgroundColor = [UIColor blueColor];
    _myScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
    _myScrollView.maximumZoomScale = 3;
    _myScrollView.minimumZoomScale = 1;
    _myScrollView.contentSize = _myScrollView.frame.size;
    _myScrollView.delegate = self;
    
    [_myScrollView addSubview:_myImage];
    [self.view addSubview:_myScrollView];
}

- (void)viewDidAppear:(BOOL)animated{
    [_myScrollView flashScrollIndicators];
}

- (UIView*)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    return _myImage;
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

@end
