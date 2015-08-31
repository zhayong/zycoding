//
//  NSString+BASE64.h
//  ZY*
//
//  Created by 査勇 on 15/7/11.
//  Copyright (c) 2015年 查勇的小仓库. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (BASE64)

// AES加密
+ (NSString *)AES256EncryptWithKey:(NSString *)key;
// AES解密
+ (NSString *)AES256DecryptWithKey:(NSString *)key;

// BASE64加密
+ (NSString*)encodeBase64String:(NSString *)input;
// BASE64解密
+ (NSString*)decodeBase64String:(NSString *)input;

// BASE64加密
+ (NSString*)encodeBase64Data:(NSData *)data;
// BASE64解密
+ (NSString*)decodeBase64Data:(NSData *)data;


@end
