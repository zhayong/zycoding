//
//  UIImage+ZY.h
//  ZY*
//
//  Created by 査勇 on 15/7/9.
//  Copyright (c) 2015年 查勇的小仓库. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ZY)
/**
 *  加载图片
 *
 *  @param name 图片名
 */
+ (UIImage *)imageWithName:(NSString *)name;

// 返回一张自由拉伸的图片
+ (UIImage *)resizedImageWithName:(NSString *)name;


@end
