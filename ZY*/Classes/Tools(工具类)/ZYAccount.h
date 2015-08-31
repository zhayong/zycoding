//
//  ZYAccount.h
//  ZY*
//
//  Created by 査勇 on 15/7/10.
//  Copyright (c) 2015年 查勇的小仓库. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZYAccount : NSObject <NSCoding>

//@property (copy,nonatomic) NSString *access_token;
//@property (strong,nonatomic) NSDate *expiresTime;   // 账号过期时间
//// 建议用 long long 类型
//@property (assign,nonatomic) long long expires_in;
//@property (assign,nonatomic) long long remind_in;
//@property (assign,nonatomic) long long uid;
//
//+ (instancetype)accountWithDic:(NSDictionary *)dic;
//- (instancetype)initWithDictionary:(NSDictionary *)dic;

@property (copy,nonatomic) NSString *username;
@property (copy,nonatomic) NSString *password;

@end
