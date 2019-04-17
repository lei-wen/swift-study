//
//  HTTPViewModel.h
//  Block回顾
//
//  Created by lei-wen on 2019/4/17.
//  Copyright © 2019 lei-wen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HTTPViewModel : NSObject

- (void)loadData:(void(^)(NSString *jsonData))callBack;

@end

NS_ASSUME_NONNULL_END
