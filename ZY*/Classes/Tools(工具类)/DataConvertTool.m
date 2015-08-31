//
//  DataConvertTool.m
//  UnixTime
//
//  Created by songxiaobo on 15/1/31.
//  Copyright (c) 2015年 zhayong. All rights reserved.
//

#import "DataConvertTool.h"

@interface DataConvertTool()

{
    NSDateFormatter *formatter;

}

@end

@implementation DataConvertTool

- (void)initialize
  {
    // 设置时间显示格式
    formatter = [[NSDateFormatter alloc]init];
    [formatter setDateStyle:NSDateFormatterMediumStyle];
    [formatter setDateFormat:@"YYYY-MM-dd HH:mm:ss"]; // HH:24小时制 hh:12小时制
     NSTimeZone *zone = [NSTimeZone timeZoneWithName:@"Asia/Beijing"];
    [formatter setTimeZone:zone];
   
  }

// 1.NSString转时间戳
- (long long)unixTimeWithString:(NSString *)string
    {
        [self initialize];
        NSDate *date = [formatter dateFromString:string];
       long long unixtime = (long long)[date timeIntervalSince1970];
        return unixtime;
    }

// 2.NSData转时间戳
- (long long)unixTimeWithDate:(NSDate *)date;
    {
        [self initialize];
        long long unixtime = (long long)[date timeIntervalSince1970];
        
        return unixtime;

    }

// 3.时间戳转NSString
- (NSString *)stringWithUnixTime:(long long)unixTime
    {
        [self initialize];
        NSDate *date = [NSDate dateWithTimeIntervalSince1970:unixTime];
        NSString *string = [formatter stringFromDate:date];
        
        return string;
        
    }

// 4.时间戳转NSData
- (NSDate *)dateWithUnixTime:(long long)unixTime
    {
        formatter = [[NSDateFormatter alloc]init];
        [formatter setDateStyle:NSDateFormatterMediumStyle];
        [formatter setDateFormat:@"YYYY-MM-dd HH:mm:ss"];
        [formatter setTimeZone:[NSTimeZone timeZoneWithName:@"GTM"]];
        NSTimeZone *zome = [NSTimeZone systemTimeZone];
        NSDate *dateNow = [NSDate date];
        NSInteger integer = [zome secondsFromGMTForDate:dateNow];
        NSDate *convertDate = [NSDate dateWithTimeIntervalSince1970:unixTime];
        NSDate *date = [convertDate dateByAddingTimeInterval:integer];
        return date;
    }
// 5.NSDate转NSString
- (NSString *)stringFromeDate:(NSDate *)date
{
    [self initialize];
    NSString *string = [formatter stringFromDate:date];
    return string;

}


// 6.NSString转NSDate
- (NSDate *)dateFromeString:(NSString *)string
{

    [self initialize];
    NSDate *date1 = [formatter dateFromString:string];
    return date1;

}
@end
