//
//  UIImage+Clip.h
//  ClipView
//
//  Created by Zhayong on 10/21/15.
//  Copyright (c) 2015 Zha Yong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Clip)

+ (UIImage *)clipFromView:(UIView *)theView;

+ (UIImage *)clipFromView:(UIView *)theView andFrame:(CGRect)rect;

+ (UIImage *)imageCreateWithImage:(UIImage *)image InRect:(CGRect)rect;

@end
