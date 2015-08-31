//
//  ZYAccountTool.m
//  ZY*
//
//  Created by 査勇 on 15/7/10.
//  Copyright (c) 2015年 查勇的小仓库. All rights reserved.
//

#import "ZYAccountTool.h"
#import "ZYAccount.h"
#import <CommonCrypto/CommonCrypto.h>

#define ZYAccountFile [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:@"account.data"]

@implementation ZYAccountTool

+ (void)saveAccount:(ZYAccount *)account
{
//    // 计算账号过期
//    NSDate *now = [NSDate date];
//    account.expiresTime = [now dateByAddingTimeInterval:account.expires_in];
    
    [NSKeyedArchiver archiveRootObject:account toFile:ZYAccountFile];
}

+ (ZYAccount *)account
{
   // 取出账号
    ZYAccount *account = [NSKeyedUnarchiver unarchiveObjectWithFile:ZYAccountFile];
    
    // 判断账号是否过期
//    NSDate *now = [NSDate date];
//    if([now compare:account.expiresTime]){
//        
//        return account;
//    }
//    else{   //过期
//        
//        return nil;
//    }
    return account;
    
}

+ (BOOL)removeAccount
{
    NSError *error;
    return [[NSFileManager defaultManager] removeItemAtPath:ZYAccountFile error:&error];
}

@end
