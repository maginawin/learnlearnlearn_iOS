//
//  I2WatchViewController.m
//  LearnLearnLearn
//
//  Created by maginawin on 14-12-19.
//  Copyright (c) 2014年 mycj.wwd. All rights reserved.
//

#import "I2WatchViewController.h"
#import "ScrollCotentViewController.h"
#import "ScrollTableViewController.h"

@interface I2WatchViewController ()
@property (strong, nonatomic) UIStoryboard* sb;
//@property (strong, nonatomic) ScrollCotentViewController* scVC1;
//@property (strong, nonatomic) ScrollCotentViewController* scVC2;
//@property (strong, nonatomic) ScrollCotentViewController* scVC3;
@property (strong, nonatomic) ScrollTableViewController* scVC1;
@property (strong, nonatomic) ScrollTableViewController* scVC2;
@property (strong, nonatomic) ScrollTableViewController* scVC3;
@property (nonatomic) int pageNum;
@end

@implementation I2WatchViewController
CGFloat width;
CGFloat height;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    width = self.view.bounds.size.width;
    height = self.view.bounds.size.height;
    _pageNum = 0;
    _sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//    ScrollCotentViewController* scVC2 = [ScrollCotentViewController alloc];
    _scVC1 = [_sb instantiateViewControllerWithIdentifier:@"scrollTable"];
    _scVC2 = [_sb instantiateViewControllerWithIdentifier:@"scrollTable"];
    _scVC3 = [_sb instantiateViewControllerWithIdentifier:@"scrollTable"];
//    ScrollCotentViewController* scVC3 = [_sb instantiateViewControllerWithIdentifier:@"scrollContentVC"];
//    [_scVCArray insertObject:scVC3 atIndex:0];
    _scrollView.delegate = self;
    
    _scrollView.contentSize = CGSizeMake(width * 3, height - 140);
    //    _scrollView.contentOffset = CGPointMake(0, 0);
    _scrollView.contentInset = UIEdgeInsetsMake(0, 0, 0, 0);
    _scrollView.directionalLockEnabled = YES;

    _scVC1.view.frame = CGRectMake(0, 0, width, height);
    _scVC2.view.frame = CGRectMake(width, 0, width, height);
    _scVC3.view.frame = CGRectMake(width * 2, 0, width, height);
    
    [_scrollView addSubview:_scVC1.view];
    [_scrollView addSubview:_scVC2.view];
    [_scrollView addSubview:_scVC3.view];
//    _scVC1.pageStr = @"test1";
//    _scVC2.pageStr = @"test2";
//    _scVC3.pageStr = @"test3";
//    ScrollCotentViewController* scVC3 = [_scVCArray objectAtIndex:0];
//    scVC3.view.frame = CGRectMake(width, -100, width, height);
//    [_scrollView addSubview:scVC3.view];
//    scVC3.pageLabel.text = @"test2";
    _scrollView.contentOffset = CGPointMake(width, 0);
    NSLog(@"view did layout subview");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated{

}

- (void)viewWillLayoutSubviews{

}

- (void)viewDidLayoutSubviews{
    
 
}
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    
    
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    CGFloat y = scrollView.contentOffset.y;
    if (y < -100) {
        NSLog(@"滑大于100y");
//        _scrollView.contentOffset = CGPointMake(width, -100);
//        _scVC2.view.frame = CGRectMake(width, 0, width, height);
    }
}

- (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView{
    NSLog(@"end animation");
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    CGFloat x = scrollView.contentOffset.x;
    CGFloat y = scrollView.contentOffset.y;
    int locationX = x / width;
    if (locationX == 0) {
//        _scrollView.contentSize = CGSizeMake(width * 3, height - 139);
//        _scVC1.view.frame = CGRectMake(0, -100, width, height);
//        [_scrollView addSubview:_scVC1.view];
        _pageNum -= 1;
    }
    if (locationX == 2) {
//        _scVC1.view.frame = CGRectMake(width * 2, -100, width, height);
//        [_scrollView addSubview:_scVC1.view];
        _pageNum += 1;       
    }
    _scVC2.pageStr = [NSString stringWithFormat:@"page%d", _pageNum];
    [_scVC2.tableView reloadData];
    _scrollView.contentOffset = CGPointMake(width, 0);
    NSLog(@"x:%lf,y:%lf, pageNum : %d",x,y,_pageNum);
  
}

//向前加一页

//向后加一页

@end
