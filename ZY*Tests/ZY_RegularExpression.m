//
//  ZY_RegularExpression.m
//  ZY*
//
//  Created by zhayong on 15/8/31.
//  Copyright (c) 2015年 查勇的小仓库. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

#import "NSRegularExpression+ZY.h"

@interface ZY_RegularExpression : XCTestCase

@end

@implementation ZY_RegularExpression

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

// 测试时间正则 用例1 00:01 用例2 00：61
- (void)testTimeRegularExpression
{
    NSString *time = @"00:01";
    BOOL result = [NSRegularExpression regularExpressionWithTime:time];
    XCTAssertTrue(result == YES ,@"期望是YES,结果是：%d",result);

}

// 测试邮箱正则 用例 zhayong@yeah.net  132465 qertqert  qwer@wagnba.com
- (void)testEmailRegularExpression
{
    NSString *Email = @"__@wagnba.com";
    BOOL result = [NSRegularExpression regularExpressionWithEmail:Email];
    XCTAssertTrue(result == YES ,@"期望是YES,结果是：%d",result);
    
}

// 测试手机号码正则 用例 18225542758  153565689 15465465
- (void)testPhoneNumberRegularExpression
{
    NSString *PhoneNumber = @"18225542758";
    BOOL result = [NSRegularExpression regularExpressionWithPhotoNumber:PhoneNumber];
    XCTAssertTrue(result == YES ,@"期望是YES,结果是：%d",result);
    
}
- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
