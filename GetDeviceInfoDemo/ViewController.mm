//
//  ViewController.m
//  GetDeviceInfoDemo
//
//  Created by wyg on 2018/3/2.
//  Copyright © 2018年 wyg. All rights reserved.
//

#import "ViewController.h"
#import "UIDevice+WYGDeviceInfo.h"
#import <sys/utsname.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];

    CGFloat width = self.view.bounds.size.width;
    
    for (int i=0; i<7; i++) {
        UILabel *label = [[UILabel alloc]init];
        label.textColor = [UIColor blackColor];
        label.numberOfLines = 0;
        label.frame = CGRectMake(5,60*(i+1),width-5,40);
        if (i == 0) {
            label.text = [NSString stringWithFormat:@"deviceName---%@",[UIDevice currentDevice].deviceName];
            [self.view addSubview:label];
        }
        if (i == 1) {
            label.text = [NSString stringWithFormat:@"sysname---%@",[UIDevice currentDevice].sysnameName];
            [self.view addSubview:label];
        }
        if (i == 2) {
            label.text = [NSString stringWithFormat:@"nodename---%@",[UIDevice currentDevice].nodenameName];
            [self.view addSubview:label];
        }
        if (i == 3) {
            label.text = [NSString stringWithFormat:@"release---%@",[UIDevice currentDevice].releaseName];
            [self.view addSubview:label];
        }
        if (i == 4) {
            label.text = [NSString stringWithFormat:@"iPhoneType---%@",[UIDevice currentDevice].iphoneType];
            [self.view addSubview:label];
        }
        if (i == 5) {
            label.frame = CGRectMake(5,60*(i+1),width-5,80);
            label.text = [NSString stringWithFormat:@"UUID---%@",[UIDevice currentDevice].deviceUniqueIdentifier];
            [self.view addSubview:label];
        }
        if (i == 6) {
            label.frame = CGRectMake(5,60*(i+1),width-5,200);
            label.text = [NSString stringWithFormat:@"version---%@",[UIDevice currentDevice].versionName];
            [self.view addSubview:label];
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
