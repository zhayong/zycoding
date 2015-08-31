//
//  ZYAccountTool.h
//  ZY*
//
//  Created by 査勇 on 15/7/10.
//  Copyright (c) 2015年 查勇的小仓库. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ZYAccount;

@interface ZYAccountTool : NSObject

// 存储账号信息
+ (void)saveAccount:(ZYAccount *)account;

// 返回存储的账号信息
+ (ZYAccount *)account;

// 删除账号信息
+ (BOOL)removeAccount;

@end
