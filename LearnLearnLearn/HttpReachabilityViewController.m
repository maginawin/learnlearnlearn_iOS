//
//  HttpReachabilityViewController.m
//  LearnLearnLearn
//
//  Created by maginawin on 15-1-5.
//  Copyright (c) 2015年 mycj.wwd. All rights reserved.
//

#import "HttpReachabilityViewController.h"
#import "Reachability.h"


@interface HttpReachabilityViewController ()

@end

@implementation HttpReachabilityViewController
NSMutableData* totalData;

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString* str = @"http://www.mymcuapp.com/apk/MyWatch.apk";
    totalData = [[NSMutableData alloc]init];
    NSURL* url = [NSURL URLWithString:str];
    NSURLRequest* request = [NSURLRequest requestWithURL:url cachePolicy:NSURLRequestReloadIgnoringCacheData timeoutInterval:5];
    NSURLConnection* conn = [NSURLConnection connectionWithRequest:request delegate:self];
    if (conn != nil) {
        return;
    }
}
//响应生成时激发
- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response{
    NSLog(@"--didReceiverResponse--");
    NSLog(@"响应的数据类型:%@",response.MIMEType);
    NSLog(@"响应的数据长度为:%lld",response.expectedContentLength);
    NSLog(@"响应的数据所使用的字符集为:%@",response.textEncodingName);
    NSLog(@"响应的文件名为:%@",response.suggestedFilename);
}
//每次读取服务器响应的数据时,都会激发
//对于一个请求而言,服务器数据可能要分几次才能读取,因此该方法将会被触发多次
//如果程序需要将这些数据转换成字符串,则建议使用NSMutableData来收集这些数据,然后整体转换
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    [totalData appendData:data];
}
//当连接服务器出现错误时激发该方法,可通过error获取错误信息
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error{
    NSLog(@"-error--");
}
//当数据load完时激发该方法,对于每次请求,该方法只会被激发一次
- (void)connectionDidFinishLoading:(NSURLConnection *)connection{
    NSLog(@"--finishLoading--");
    NSString* content = [[NSString alloc] initWithData:totalData encoding:NSUTF8StringEncoding];
    [totalData setLength:0];
    self.showView.text = content;
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

- (IBAction)testNetStatus:(id)sender {
    NSString* site = self.siteField.text;
    Reachability* reach = [Reachability reachabilityWithHostName:site];
    //判断该设备的状态
    switch ([reach currentReachabilityStatus]) {
        case NotReachable:
            [self showAlert:@"不能访问"];
            break;
        case ReachableViaWiFi:
            [self showAlert:@"使用Wifi访问"];
            break;
        case ReachableViaWWAN:
            [self showAlert:@"使用3G/4G访问"];
            break;
        default:
            break;
    }
}

- (IBAction)testInternet:(id)sender {
    if ([[Reachability reachabilityForInternetConnection] currentReachabilityStatus] != NotReachable) {
        [self showAlert:@"3g/4g网络已连接"];
    }else{
        [self showAlert:@"3g/4g网络不可用"];
    }
}

- (IBAction)testWifi:(id)sender {
    if ([[Reachability reachabilityForLocalWiFi]currentReachabilityStatus]) {
        [self showAlert:@"wifi已连接"];
    }else{
        [self showAlert:@"wifi不可用"];
    }
}

- (void)showAlert:(NSString*)msg{
    UIAlertView* alert = [[UIAlertView alloc]initWithTitle:@"网络状态" message:msg delegate:self cancelButtonTitle:@"好的" otherButtonTitles:nil, nil];
    [alert show];
}
@end
