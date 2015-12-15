//
//  UIImage+Clip.m
//  ClipView
//
//  Created by Zhayong on 10/21/15.
//  Copyright (c) 2015 Zha Yong. All rights reserved.
//

#import "UIImage+Clip.h"

@implementation UIImage (Clip)

+ (UIImage *)clipFromView: (UIView *) theView
{
    
    UIGraphicsBeginImageContext(theView.frame.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    [theView.layer renderInContext:context];
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return theImage;
}
#warning 截图的大小与原图大小一样，只不过图片的其他部分为透明像素

+(UIImage *)clipFromView:(UIView *)theView andFrame:(CGRect)rect
{
    UIGraphicsBeginImageContext(theView.frame.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSaveGState(context);
    UIRectClip(rect);
    [theView.layer renderInContext:context];
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return  theImage;
}

+ (UIImage *)imageCreateWithImage:(UIImage *)image InRect:(CGRect)rect
{
    CGImageRef imageRef = CGImageCreateWithImageInRect(Image.CGImage, frame);
    UIGraphicsEndImageContext();
    UIImage *theImage = [UIImage imageWithCGImage:imageRef];
   return theImage
}

@end
