//
//  ZYAccount.m
//  ZY*
//
//  Created by 査勇 on 15/7/10.
//  Copyright (c) 2015年 查勇的小仓库. All rights reserved.
//

#import "ZYAccount.h"

@implementation ZYAccount

//+ (instancetype)accountWithDic:(NSDictionary *)dic
//{
//    return [[self alloc]initWithDictionary:dic];
//}
//
//- (instancetype)initWithDictionary:(NSDictionary *)dic
//{
//    if(self = [super init])
//    {
//        [self setValuesForKeysWithDictionary:dic];
//    }
//    return self;
//
//}

// 从文件中解析对象时调用
- (id)initWithCoder:(NSCoder *)aDecoder
{
    if(self = [super init]){
//        self.access_token = [aDecoder decodeObjectForKey:@"access_token"];
//        self.expiresTime = [aDecoder decodeObjectForKey:@"expiresTime"];
//        self.remind_in = [aDecoder decodeInt64ForKey:@"remind_in"];
//        self.expires_in = [aDecoder decodeInt64ForKey:@"expires_in"];
//        self.uid = [aDecoder decodeInt64ForKey:@"uid"];
        self.username = [aDecoder decodeObjectForKey:@"username"];
        self.password = [aDecoder decodeObjectForKey:@"password"];
    }
    return self;
}

// 将对象写入文件的时候调用
- (void)encodeWithCoder:(NSCoder *)aCoder
{
//    [aCoder encodeObject:self.access_token forKey:@"access_token"];
//    [aCoder encodeObject:self.expiresTime forKey:@"expiresTime"];
//    [aCoder encodeInt64:self.expires_in forKey:@"expires_in"];
//    [aCoder encodeInt64:self.remind_in forKey:@"remind_in"];
//    [aCoder encodeInt64:self.uid forKey:@"uid"];
    [aCoder encodeObject:self.username forKey:@"username"];
    [aCoder encodeObject:self.password forKey:@"password"];

}

@end
