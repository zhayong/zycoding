//
//  UINavigationBar+Change.m
//  ChangeNavBar
//
//  Created by 卓谨科技 on 15/4/10.
//  Copyright (c) 2015年 zhuojin. All rights reserved.
//

#import "UINavigationBar+Change.h"

@implementation UINavigationBar (Change)

static char overlayKey;

- (UIView *)overlay
{
    return objc_getAssociatedObject(self,&overlayKey);
}

- (void)setOverlay:(UIView *)overlay
{
    objc_setAssociatedObject(self, &overlayKey, overlay, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)It_setBackgroundColor:(UIColor *)backgroundColor
{
    if(!self.overlay)
    {
        [self setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
        
        [self setShadowImage:[UIImage new]];
    
        self.overlay = [[UIView alloc]initWithFrame:CGRectMake(0, -20, [UIScreen mainScreen].bounds.size.width, 64)];
        [self insertSubview:self.overlay atIndex:0];
    }
    self.overlay.backgroundColor = backgroundColor;

}
@end
