//
//  DataConvertTool.h
//  UnixTime
//
//  Created by songxiaobo on 15/1/31.
//  Copyright (c) 2015年 zhayong. All rights reserved.
//  时间转换工具

#import <Foundation/Foundation.h>

@interface DataConvertTool : NSObject

// 1.NSString转时间戳
- (long long)unixTimeWithString:(NSString *)string;

// 2.NSData转时间戳
- (long long)unixTimeWithDate:(NSDate *)date;

// 3.时间戳转NSString
- (NSString *)stringWithUnixTime:(long long)unixTime;

// 4.时间戳转NSDate
- (NSDate *)dateWithUnixTime:(long long)unixTime;

// 5.NSDate转NSString
- (NSString *)stringFromeDate:(NSDate *)date;

// 6.NSString转NSDate
- (NSDate *)dateFromeString:(NSString *)string;

@end
