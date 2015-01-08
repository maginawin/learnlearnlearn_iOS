//
//  LocalNotificationViewController.m
//  LearnLearnLearn
//
//  Created by maginawin on 15-1-8.
//  Copyright (c) 2015年 mycj.wwd. All rights reserved.
//

#import "LocalNotificationViewController.h"
#import <AVFoundation/AVFoundation.h>
@interface LocalNotificationViewController (){
    UIApplication* app;
}
- (IBAction)btn1:(id)sender;
- (IBAction)btn2:(id)sender;
- (IBAction)btn3:(id)sender;

@end

@implementation LocalNotificationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    app = [UIApplication sharedApplication];
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

- (IBAction)btn1:(id)sender {
    //创建一个本地通知
    UILocalNotification* notification = [[UILocalNotification alloc] init];
    //设置触发的时间
    notification.fireDate = [NSDate dateWithTimeIntervalSinceNow:3];
    //设置重复发送的时间间隔
    notification.repeatInterval = kCFCalendarUnitMinute;
    //设置通知的声音
    notification.soundName = @"Button9.wav";
    //设置处于锁屏状态时的title
    notification.alertAction = @"打开";
    //设置通知是否可显示action
    notification.hasAction = YES;
    //设置通过通知加载应用时显示的图片
//    notification.alertLaunchImage = @"logo.png";
    //设置通知的内容
    notification.alertBody = @"通知来了";
    //设置在应用程序上红色徽标中的数字
//    notification.applicationIconBadgeNumber = 1;
    //设置userInfo,用于携带额外的信息
    NSDictionary* info = @{@"mymcuapp.com":@"key"};
    notification.userInfo = info;
    //调度通知
    [app scheduleLocalNotification:notification];
}

- (IBAction)btn2:(id)sender {
    [app presentLocalNotificationNow:[self getMyNotification:@"mymcuapp.com"]];
}

- (IBAction)btn3:(id)sender {
    [app cancelAllLocalNotifications];
}

- (UILocalNotification*)getMyNotification:(NSString*)myNoti{
    //获取所有处于调度中的本地通知数组
    NSArray* localArray = [app scheduledLocalNotifications];
    if (localArray) {
        for (UILocalNotification* noti in localArray) {
            NSDictionary* dict = noti.userInfo;
            if (dict) {
                //如果找到要的通知
                NSString* key = [dict objectForKey:@"key"];
                if ([key isEqualToString:myNoti]) {
                    return noti;
                }
            }
        }
    }
    return nil;
}
@end
