//
//  UIImage+Extension.m
//  LMS
//
//  Created by Zhayong on 2/24/16.
//  Copyright © 2016 Accenture. All rights reserved.
//

#import "UIImage+Extension.h"

@implementation UIImage (Extension)

+ (UIImage*)imageWithOrginImage:(UIImage *)orginImage scale:(CGFloat)scale
{
    CGSize size = CGSizeMake(orginImage.size.width * scale, orginImage.size.height * scale);
    
    UIGraphicsBeginImageContext(size);
    [orginImage drawInRect:CGRectMake(0, 0, size.width, size.height)];
    
    UIImage* scaledImage = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return scaledImage;
}

@end
