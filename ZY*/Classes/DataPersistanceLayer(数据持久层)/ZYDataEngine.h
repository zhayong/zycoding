//
//  ZYDataEngine.h
//  ZY*
//
//  Created by 査勇 on 15/7/13.
//  Copyright (c) 2015年 查勇的小仓库. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^successBlock)(id responseObject);
typedef void (^failtureBlock)(NSError *error);

@interface ZYDataEngine : NSObject

/**
 *  实例化AFHTTPRequestOperationManager
 *
 *  @return manager
 */
+ (AFHTTPRequestOperationManager *)getAFNetworkingManager;

- (void)getDataWithURLString:(NSString *)url parameters:(id)paramters OnSuccess:(successBlock)successBlock OnFailture:(failtureBlock)failtureBlock;

@end
