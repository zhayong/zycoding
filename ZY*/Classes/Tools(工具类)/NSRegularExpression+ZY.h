//
//  NSRegularExpression+ZY.h
//  ZY*
//
//  Created by zhayong on 15/8/31.
//  Copyright (c) 2015年 查勇的小仓库. All rights reserved.
//  参考blog http://blog.csdn.net/jueyi1127/article/details/47973977

#import <Foundation/Foundation.h>

@interface NSRegularExpression (ZY)

// 1.时间正则  hh:mm格式 24小时制
+ (BOOL)regularExpressionWithTime:(NSString *)time;

// 2.邮箱正则
+ (BOOL)regularExpressionWithEmail:(NSString *)Email;

// 3.手机号码正则
+ (BOOL)regularExpressionWithPhotoNumber:(NSString *)PhotoNumber;

@end
