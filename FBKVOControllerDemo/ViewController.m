//
//  ViewController.m
//  FBKVOControllerDemo
//
//  Created by 曹书润 on 2017/4/6.
//  Copyright © 2017年 LeoAiolia. All rights reserved.
//

#import "ViewController.h"
@import KVOController;

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *accountTF;
@property (weak, nonatomic) IBOutlet UITextField *pswTF;
@property (nonatomic,strong) NSString *content;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.content = @"123";
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self.KVOController observe:self keyPath:@"content" options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld block:^(id  _Nullable observer, id  _Nonnull object, NSDictionary<NSString *,id> * _Nonnull change) {
        NSLog(@"%@",change);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonClick:(UIButton *)sender {
    self.content = @"23";
}


@end
