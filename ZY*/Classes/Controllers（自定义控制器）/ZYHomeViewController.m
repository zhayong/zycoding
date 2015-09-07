//
//  ZYHomeViewController.m
//  ZY*
//
//  Created by 査勇 on 15/7/10.
//  Copyright (c) 2015年 查勇的小仓库. All rights reserved.
//

#import "ZYHomeViewController.h"
#import "GTMBase64.h"

#import "NSString+MD5.h"
#import "NSData+AES.h"

#import "ZYDataEngine.h"
#import "ZYFileManager.h"
#import "ZYAccount.h"
#import "ZYAccountTool.h"

#import "ZYLoginViewController.h"
#import "ZYVerticalLable.h"

@interface ZYHomeViewController ()


@end

@implementation ZYHomeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSLog(@"%@",[ZYFileManager getDocumentDirectory]);
    
    //
    UIButton *rightButton = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 40, 40)];
    [rightButton setTitle:@"退出" forState:UIControlStateNormal];
    [rightButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [rightButton addTarget:self action:@selector(rightButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc]initWithCustomView:rightButton];
    self.navigationItem.rightBarButtonItem = rightItem;
    
    // 添加竖直Lable
    ZYVerticalLable *lab = [[ZYVerticalLable alloc]initWithFrame:self.view.frame];
    lab.text = @"这是我的竖直标签";
    [self.view addSubview:lab];
    
}

- (void)rightButtonClicked:(UIButton *)rightButton
{
    // 退出登录
    
    // 1、删除归档账户信息
    if([ZYAccountTool removeAccount]){}
    else{NSLog(@"删除归档账户信息错误");}
    
    // 2、 跳转到登录页面
    ZYLoginViewController *loginViewController = [[ZYLoginViewController alloc]init];
    [self presentViewController:loginViewController animated:YES completion:^{
        
    }];
}

@end
