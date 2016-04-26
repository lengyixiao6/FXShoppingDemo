//
//  FXCartController.m
//  FXShoppingDemo
//
//  Created by Benniu15 on 16/4/25.
//  Copyright © 2016年 Wind. All rights reserved.
//

#import "FXCartController.h"
#import "FXCartOrderView.h"
#import "FXCartSettlementView.h"

@interface FXCartController ()

@end

@implementation FXCartController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self setupUI];
}
- (void)setupUI{
    
    FXCartOrderView * cartOrderView = [[FXCartOrderView alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, self.view.frame.size.height-64)];
    [self.view addSubview:cartOrderView];
    
    FXCartSettlementView * cartSettlementView = [[FXCartSettlementView alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height-44, self.view.frame.size.width, 44)];
    [self.view addSubview:cartSettlementView];
    
}


@end
