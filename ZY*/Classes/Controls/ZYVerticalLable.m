//
//  ZYVerticalLable.m
//  ZY*
//
//  Created by zhayong on 15/8/31.
//  Copyright (c) 2015年 查勇的小仓库. All rights reserved.
//

#import "ZYVerticalLable.h"

@implementation ZYVerticalLable

- (void)drawRect:(CGRect)rect
{
    float view_height = self.frame.size.height;
    float view_width = self.frame.size.width;
    
    float start_x = 0;
    float start_y = 0;
    float with = self.font.pointSize;
    float height = self.font.pointSize;
    float x;
    float y;
    
    start_x = view_width - with;
    
    NSInteger charNumber;
    NSInteger containerNumber;
    
    containerNumber = floor(view_width / height);
    charNumber = floor(view_height / height);
    
    NSString *drawStr = self.text;
    
    NSInteger lineNumber = ceil([drawStr length] / charNumber);
    
    if(lineNumber >= containerNumber){
        NSRange range;
        range.location = 0;
        range.length = containerNumber * charNumber - 1;
        drawStr = [drawStr substringWithRange:range];
        drawStr = [drawStr stringByAppendingString:@"..."];
    }
    for (int i = 0; i < [drawStr length]; i++) {
        x = start_x - floor(i/charNumber) * with;
        y = start_y + (i % charNumber) * height;
        CGRect Aframe = CGRectMake(x, y, with, height);
        NSRange range;
        range.length = 1;
        range.location = i;
        NSString *str = [drawStr substringWithRange:range];
        NSDictionary *attributes = @{NSFontAttributeName:[UIFont systemFontOfSize:14]};
        [str drawInRect:Aframe withAttributes:attributes];
    }
}

@end
