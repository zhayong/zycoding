//
//  ZYConnector.m
//  ZY*
//
//  Created by Zhayong on 2/23/16.
//  Copyright © 2016 查勇的小仓库. All rights reserved.
//

#import "ZYConnector.h"
#define CACHE_MEMORY_SIZE 1024
#define HTML_SCHEME @"https://www.baidu.com"

@implementation ZYConnector

- (id)initWithRequest:(NSURLRequest *)request
{
    if(self = [super init]){
        _request = request;
        _finishLoading = NO;
        
        // 使用合适的内存区域缓存URL
        NSURLCache *urlCache = [[NSURLCache alloc]init];
        [urlCache setMemoryCapacity:CACHE_MEMORY_SIZE];
        [NSURLCache setSharedURLCache:urlCache];
        
        // 创建连接并开始从数据源下载数据
        _connector = [NSURLConnection connectionWithRequest:request delegate:self];
    }
    return self;
}

- (void)reloadRequest
{
    self.finishLoading = NO;
    self.connector = [NSURLConnection connectionWithRequest:self.request delegate:self];
}

#pragma mark - NSURLConnectionDelegate

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    NSString *desciption = [error localizedDescription];
    NSString *domain = [error domain];
    NSInteger code = [error code];
    NSDictionary *userInfo = [error userInfo];
    NSURL *failUrl = [userInfo objectForKey:NSURLErrorFailingURLErrorKey];
    NSLog(@"\n***ERROR***\nDescription->%@\nURL->%@\nDomain->%@\nCode->%ld",desciption,failUrl,domain,code);
    self.finishLoading = YES;
    
}

#pragma mark - NSURLConnectionDataDelegate
- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    if(response){
        [self.receiveData setLength:0];
    }
}

- (NSCachedURLResponse *)connection:(NSURLConnection *)connection willCacheResponse:(NSCachedURLResponse *)cachedResponse
{
    NSURLResponse *response = [cachedResponse response];
    NSURL *url = [response URL];
    if([[url scheme] isEqualToString:HTML_SCHEME]){
        NSLog(@"Download data,caching respose!");
        return cachedResponse;
    }else{
        NSLog(@"Download data,not caching response!");
    }
    return nil;
    
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(nonnull NSData *)data
{
    if(self.receiveData){
        [self.receiveData appendData:data];
    }else{
        self.receiveData = [[NSMutableData alloc]initWithData:data];
    }
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSUInteger lenght = [self.receiveData length];
    NSLog(@"Download %lu bytes from request %@",lenght,self.request);
    
    //加载完数据后，设置退出运行循环标记
    _finishLoading = YES;
}
@end
