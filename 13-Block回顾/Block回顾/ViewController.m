//
//  ViewController.m
//  Block回顾
//
//  Created by lei-wen on 2019/4/17.
//  Copyright © 2019 lei-wen. All rights reserved.
//

#import "ViewController.h"
#import "HTTPViewModel.h"

@interface ViewController ()

@property (nonatomic, readwrite, strong) HTTPViewModel *httpViewModel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.httpViewModel = [[HTTPViewModel alloc] init];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.httpViewModel loadData:^(NSString * _Nonnull jsonData) {
        NSLog(@"在ViewC中拿到数据%@", jsonData);
    }];
}

@end
