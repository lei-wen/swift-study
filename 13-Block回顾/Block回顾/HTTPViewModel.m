//
//  HTTPViewModel.m
//  Block回顾
//
//  Created by lei-wen on 2019/4/17.
//  Copyright © 2019 lei-wen. All rights reserved.
//

#import "HTTPViewModel.h"

@implementation HTTPViewModel

- (void)loadData:(void (^)(NSString *))callBack {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSLog(@"发送网络请求:%@", [NSThread currentThread]);
        
        dispatch_async(dispatch_get_main_queue(), ^{
            NSLog(@"拿到数据，进行回调：%@", [NSThread currentThread]);
            callBack(@"json数据");
        });
    });
}

@end
