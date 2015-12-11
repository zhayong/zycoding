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

@end
