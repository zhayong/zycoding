//
//  ZYConnector.h
//  ZY*
//
//  Created by Zhayong on 2/23/16.
//  Copyright © 2016 查勇的小仓库. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZYConnector : NSObject<NSURLConnectionDelegate,NSURLConnectionDownloadDelegate,NSURLConnectionDataDelegate>

@property (nonatomic, assign) BOOL finishLoading;
@property (nonatomic,strong) NSURLRequest *request;
@property (nonatomic, strong) NSMutableData *receiveData;
@property (nonatomic,strong) NSURLConnection *connector;

@end
