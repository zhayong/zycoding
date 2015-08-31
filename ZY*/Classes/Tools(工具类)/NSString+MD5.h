//
//  NSString+MD5.h
//  ZY*
//
//  Created by 査勇 on 15/7/11.
//  Copyright (c) 2015年 查勇的小仓库. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (MD5)


// MD5只能称为一种不可逆的加密算法，只能用作一些检验过程，不能恢复其原文。随时一种摘要不可逆运算，但是网上可以解密MD5密文，为什么？。。不明白

// md5加密
- (NSString *)md5:(NSString *)str;

@end
