//
//  ZYDataEngine.m
//  ZY*
//
//  Created by 査勇 on 15/7/13.
//  Copyright (c) 2015年 查勇的小仓库. All rights reserved.
//

#import "ZYDataEngine.h"

@implementation ZYDataEngine

/**
 *  实例化AFHTTPRequestOperationManager
 *
 *  @return manager
 */
+ (AFHTTPRequestOperationManager *)getAFNetworkingManager
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    
    return manager;
}
/**
 *  示例
 *
 *  @param url           请求地址
 *  @param paramters     参数
 *  @param successBlock  请求成功
 *  @param failtureBlock 请求失败
 */
- (void)getDataWithURLString:(NSString *)url parameters:(id)paramters OnSuccess:(successBlock)successBlock OnFailture:(failtureBlock)failtureBlock
{
    AFHTTPRequestOperationManager *manager =[AFHTTPRequestOperationManager manager];
    [manager POST:url parameters:paramters success:^(AFHTTPRequestOperation *operation, id responseObject) {
        successBlock(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        failtureBlock(error);
    }];

}



@end
