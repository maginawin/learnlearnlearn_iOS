//
//  ScrollTableViewController.m
//  LearnLearnLearn
//
//  Created by maginawin on 14-12-19.
//  Copyright (c) 2014年 mycj.wwd. All rights reserved.
//

#import "ScrollTableViewController.h"

@interface ScrollTableViewController ()
@end

@implementation ScrollTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _pageStr = @"page";
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    _refreshA = [[UIRefreshControl alloc] init];
    _refreshA.tintColor = [UIColor redColor];
    _refreshA.attributedTitle = [[NSMutableAttributedString alloc]initWithString:@"下拉刷新"];
    [_refreshA addTarget:self action:@selector(refreshSelf) forControlEvents:UIControlEventValueChanged];
}

- (void)refreshSelf{
    _refreshA.attributedTitle = [[NSAttributedString alloc]initWithString:@"正在刷新"];
    [self performSelector:@selector(handleSelf) withObject:nil afterDelay:2];
    NSLog(@"正在刷新");
}

- (void)handleSelf{
    [_refreshA endRefreshing];
    _refreshA.attributedTitle = [[NSAttributedString alloc] initWithString:@"下拉刷新"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return self.view.frame.size.height;
}

//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
////    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellID" forIndexPath:indexPath];
//    UILabel* pageLabel = (UILabel*)[tableView viewWithTag:1];
//    pageLabel.text = _pageStr;
//    // Configure the cell...
//    
//    return nil;
//}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
