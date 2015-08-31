//
//  ZYChooseViewController.m
//  ZY*
//
//  Created by 査勇 on 15/7/10.
//  Copyright (c) 2015年 查勇的小仓库. All rights reserved.
//

#import "ZYChooseViewControllerTool.h"
#import "ZYTabBarController.h"
#import "ZYNewfeatureViewController.h"
#import "ZYLoginViewController.h"

@implementation ZYChooseViewControllerTool

+ (void)chooseRootViewController
{
    [UIApplication sharedApplication].keyWindow.rootViewController = [[ZYLoginViewController alloc]init];
    
    NSString *key = @"CFBundleVersion";
    // 从沙盒中取出上次使用软件的版本号
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *lastVersion = [defaults objectForKey:key];
    
    // 获取当前使用软件的版本号
    NSString *currentVersion = [NSBundle mainBundle].infoDictionary[key];
    if([lastVersion isEqualToString:currentVersion]){
        // 显示状态栏
        [UIApplication sharedApplication].statusBarHidden = NO;
        [UIApplication sharedApplication].keyWindow.rootViewController = [[ZYTabBarController alloc]init];
    
    } else{ // 新版本
        [UIApplication sharedApplication].keyWindow.rootViewController = [[ZYNewfeatureViewController alloc]init];
        
        // 储存新版本号
        [defaults setObject:currentVersion forKey:key];
        [defaults synchronize];
    }

}

@end
