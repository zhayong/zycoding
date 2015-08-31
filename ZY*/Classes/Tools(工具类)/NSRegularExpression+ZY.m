//
//  NSRegularExpression+ZY.m
//  ZY*
//
//  Created by zhayong on 15/8/31.
//  Copyright (c) 2015年 查勇的小仓库. All rights reserved.
//

#import "NSRegularExpression+ZY.h"

@implementation NSRegularExpression (ZY)

+ (BOOL)regularExpressionWithTime:(NSString *)time
{
    NSError *error = nil;
    NSRegularExpression *regularExpression = [[NSRegularExpression alloc]initWithPattern:@"[0-23]:[0-59]" options:0 error:&error];
    BOOL checkResult = [regularExpression firstMatchInString:time options:0 range:NSMakeRange(0, time.length)];
    if(checkResult){ // 正确的时间格式
        
        NSLog(@"正确的时间格式");
        return YES;
    }else{ // 错误的时间格式
        NSLog(@"错误的时间格式,%@",error);
        return NO;
    }
}

+ (BOOL)regularExpressionWithEmail:(NSString *)Email
{
    NSError *error = nil;
    NSRegularExpression *regularExpression = [[NSRegularExpression alloc]initWithPattern:@"^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$" options:0 error:&error];
    BOOL checkResult = [regularExpression firstMatchInString:Email options:0 range:NSMakeRange(0, Email.length)];
    if(checkResult){ // 正确的邮箱格式
        
        NSLog(@"正确的邮箱格式");
        return YES;
    }else{ // 错误的邮箱格式
        NSLog(@"错误的邮箱格式,%@",error);
        return NO;
    }
}

+ (BOOL)regularExpressionWithPhotoNumber:(NSString *)PhotoNumber
{
    NSError *error = nil;
    NSRegularExpression *regularExpression = [[NSRegularExpression alloc]initWithPattern:@"^1[3|4|5|7|8][0-9]\\d{8}$" options:0 error:&error];
    BOOL checkResult = [regularExpression firstMatchInString:PhotoNumber options:0 range:NSMakeRange(0, PhotoNumber.length)];
    if(checkResult){ // 正确的手机号码格式
        
        NSLog(@"正确的手机号码格式");
        return YES;
    }else{ // 错误的手机号码格式
        NSLog(@"错误的手机号码格式,%@",error);
        return NO;
    }
}

@end
