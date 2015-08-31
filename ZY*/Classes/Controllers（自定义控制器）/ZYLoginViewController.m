//
//  ZYLoginViewController.m
//  ZY*
//
//  Created by 査勇 on 15/7/14.
//  Copyright (c) 2015年 查勇的小仓库. All rights reserved.
//

#import "ZYLoginViewController.h"
#import "ZYTabBarController.h"

#import "ZYAccountTool.h"
#import "ZYAccount.h"

@interface ZYLoginViewController ()<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textfield_username;
@property (weak, nonatomic) IBOutlet UITextField *textfile_password;
@property (weak, nonatomic) IBOutlet UIButton *loginButton;

@end

@implementation ZYLoginViewController


#pragma mark - Initialization Variable
/**
 *   关键数据的初始化
 */
- (id)initWithCoder:(NSCoder *)aDecoder
{
    if(self = [super init])
    {
        
    
    }
    return self;
}

#pragma  mark - Life Cycle
/**
 *  重写view的getter和setter方法需要调用super方法
 */

// 关键view的初始化

//- (void)loadView
//{
//    [super loadView];
//
//}

// 分配和载入数据到View上去显示
- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

// 在这里进行显示前的处理，如弹出键盘的处理，特殊的过程动画（如改变状态栏和navigationBar颜色的改变）
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    
}

- (void)viewWillLayoutSubviews
{

}

- (void)viewDidLayoutSubviews
{
    
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:YES];
    
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:YES];
    
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:YES];
}

#pragma mark - IBActions

- (IBAction)loginButtonClicked:(UIButton *)sender {
    if(![self.textfield_username.text isEqualToString:@""] && ![self.textfile_password.text isEqualToString:@""]){
    
        if([self.textfield_username.text isEqualToString:@"zhayong"] && [self.textfile_password.text isEqualToString:@"123456"]){
            // 保存账号信息
            ZYAccount *acccount = [[ZYAccount alloc]init];
            acccount.username = _textfield_username.text;
            acccount.password = _textfile_password.text;
            [ZYAccountTool saveAccount:acccount];
            
            ZYTabBarController *zyTabBarController = [[ZYTabBarController alloc]init];
            self.modalPresentationStyle = UIModalTransitionStyleCoverVertical;
            [self presentViewController:zyTabBarController animated:YES completion:^{
                
            }];
        }
        else{
            [self alertMBProgressTixing:@"用户名或密码不正确"];
        }
    
    }
    else{
        if([self.textfield_username.text isEqualToString:@""]){
            [self alertMBProgressTixing:@"请输入用户名"];
        }
       else if([self.textfile_password.text isEqualToString:@""]){
            [self alertMBProgressTixing:@"请输入密码"];
        }
        else
        {
            [self alertMBProgressTixing:@"请输入用户名和密码"];
        }

    
    }
   
}


#pragma mark - Public Method

//alertMbprogerss
-(void)alertMBProgressTixing:(NSString *)string{
    UIWindow *window=[UIApplication sharedApplication].windows.firstObject;
    MBProgressHUD*hud= [MBProgressHUD showHUDAddedTo:window animated:YES];
    hud.mode=MBProgressHUDModeText;
    hud.yOffset = -150.f;
    hud.labelText=string;
    hud.labelFont=[UIFont systemFontOfSize:16];
    if (string.length>11) {
        hud.labelFont=[UIFont systemFontOfSize:12];
    }
    __weak UIWindow *blockview=window;
    dispatch_time_t poptime=dispatch_time(DISPATCH_TIME_NOW, 1*NSEC_PER_SEC);
    dispatch_after(poptime, dispatch_get_main_queue(), ^(void){
        //
        [MBProgressHUD hideAllHUDsForView:blockview animated:YES];
    });
}

#pragma mark - Private mMthod

#pragma mark - Delegate/Protocol

#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    return YES;

}






@end
