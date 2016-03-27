//
//  UIImage+Extension.h
//  LMS
//
//  Created by Zhayong on 2/24/16.
//  Copyright © 2016 Accenture. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Extension)
/**
 *  scale image
 *
 *  @param orginImage orgin image
 *  @param scale      scale
 *
 *  @return scale image
 */
+ (UIImage*)imageWithOrginImage:(UIImage *)orginImage scale:(CGFloat)scale;
@end
