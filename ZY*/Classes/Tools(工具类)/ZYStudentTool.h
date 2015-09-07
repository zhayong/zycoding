//
//  ZYStudentTool.h
//  ZY*
//
//  Created by zhayong on 15/9/7.
//  Copyright (c) 2015年 查勇的小仓库. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ZYStudent;

@interface ZYStudentTool : NSObject

/**
 *  添加学生
 *
 *  @param student 需要添加的学生
 */
+ (BOOL)addStudent:(ZYStudent *)student;

/**
 *  获得所有的学生
 *
 *  @return 数组中装着都是IWStudent模型
 */
+ (NSArray *)students;

/**
 *  根据搜索条件获得对应的学生
 *
 *  @param condition 搜索条件
 */
+ (NSArray *)studentsWithCondition:(NSString *)condition;

@end
