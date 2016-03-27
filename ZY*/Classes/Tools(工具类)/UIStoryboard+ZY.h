//
//  UIStoryboard+ZY.h
//  AUDIT
//
//  Created by Zhayong on 11/22/15.
//  Copyright © 2015 Zha Yong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIStoryboard (ZY)

+ (nullable __kindof UIViewController *)instantiateViewControllerWithIdentifier:(nullable NSString *)identifier inStoryboardWithName:(nullable NSString *)name bundle:(nullable NSBundle *)storyboardBundleOrNil;
@end
