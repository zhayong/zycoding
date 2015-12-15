//
//  UIImage+Clip.m
//  ClipView
//
//  Created by Zhayong on 10/21/15.
//  Copyright (c) 2015 Zha Yong. All rights reserved.
//

#import "UIImage+Clip.h"

@implementation UIImage (Clip)

+ (UIImage *)clipFromView:(UIView *)clipView
{
    UIGraphicsBeginImageContext(clipView.frame.size);
    [clipView.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return theImage;
}

+(UIImage *)clipFromView:(UIView *)clipView andFrame:(CGRect)frame
{
    // 1.将需要截屏的界面保存成图片
    UIGraphicsBeginImageContext(clipView.frame.size);
    [clipView.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    // 2.在保存的图片中截取需要的图片
    CGImageRef imageRef = CGImageCreateWithImageInRect(image.CGImage, frame);
    UIImage *theImage = [UIImage imageWithCGImage:imageRef];
    
    CGImageRelease(imageRef);
    return theImage;
}

@end
