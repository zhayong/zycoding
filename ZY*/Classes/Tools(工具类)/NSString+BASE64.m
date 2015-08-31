//
//  NSString+BASE64.m
//  ZY*
//
//  Created by 査勇 on 15/7/11.
//  Copyright (c) 2015年 查勇的小仓库. All rights reserved.
//

#import "NSString+BASE64.h"
#import "NSData+AES.h"

#import "GTMBase64.h"
#import "GTMDefines.h"

@implementation NSString (BASE64)


+ (NSString *)AES256EncryptWithKey:(NSString *)key
{
    NSData *data = [[NSData alloc]init];
    return [[NSString alloc]initWithData:[data AES256EncryptWithKey:key] encoding:NSUTF8StringEncoding];
}

+ (NSString *)AES256DecryptWithKey:(NSString *)key
{
    NSData *data = [[NSData alloc]init];
    return [[NSString alloc]initWithData:[data AES256DecryptWithKey:key] encoding:NSUTF8StringEncoding];
}

+ (NSString*)encodeBase64String:(NSString * )input {
    NSData *data = [input dataUsingEncoding:NSUTF8StringEncoding allowLossyConversion:YES];
    data = [GTMBase64 encodeData:data];
    NSString *base64String = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    return base64String;
}

+ (NSString*)decodeBase64String:(NSString * )input {
    NSData *data = [input dataUsingEncoding:NSUTF8StringEncoding allowLossyConversion:YES];
    data = [GTMBase64 decodeData:data];
    NSString *base64String = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    return base64String;
}

+ (NSString*)encodeBase64Data:(NSData *)data {
    data = [GTMBase64 encodeData:data];
    NSString *base64String = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    return base64String;
}

+ (NSString*)decodeBase64Data:(NSData *)data {
    data = [GTMBase64 decodeData:data];
    NSString *base64String = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    return base64String;
}

@end
