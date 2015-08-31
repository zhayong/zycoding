//
//  ZYTabBar.h
//  ZY*
//
//  Created by 査勇 on 15/7/9.
//  Copyright (c) 2015年 查勇的小仓库. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ZYTabBar;

@protocol ZYTabBarDelegate <NSObject>

@optional

- (void)tabBar:(ZYTabBar *)tabBar didSelectedButtonFrom:(NSInteger)from to:(NSInteger)to;

@end

@interface ZYTabBar : UITabBar

- (void)addTabBarButtonWithItem:(UITabBarItem *)item;

@property (nonatomic, weak) id<ZYTabBarDelegate> ZYTabBar_delegate;

@end
