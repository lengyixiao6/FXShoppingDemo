//
//  FXProductSortController.m
//  FXShoppingDemo
//
//  Created by Benniu15 on 16/4/25.
//  Copyright © 2016年 Wind. All rights reserved.
//

#import "FXProductSortController.h"
#import "FXSortSearchView.h"
#import "FXSortLeftBarView.h"
#import "FXSortRightView.h"

@interface FXProductSortController ()

@end

#define BGColor [UIColor colorWithWhite:0.95 alpha:1]

@implementation FXProductSortController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = BGColor;
    
    [self setupView];
    
}
- (void)setupView{
    
    FXSortSearchView * sortSearchView = [[FXSortSearchView alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, 50)];
    [self.view addSubview:sortSearchView];
    
    NSArray * arr = @[@"大衣",@"西服",@"手机数码",@"日化用品",@"车内饰品",@"床上用品",@"卫浴",@"厨房用具",@"电视机",@"冰箱",@"洗衣机",@"VR",@"计算机",@"办公用品",@"零食",@"母婴用品",@"化妆品",@"汽车",@"飞机"];
    FXSortLeftBarView * sortLeftView = [[FXSortLeftBarView alloc] initWithFrame:CGRectMake(0, 70, 100, self.view.frame.size.height-70)];
    sortLeftView.dataArray = arr;
    [self.view addSubview:sortLeftView];
    
    FXSortRightView * sortRightView = [[FXSortRightView alloc] initWithFrame:CGRectMake(100 + 5, 70, self.view.frame.size.width-100-5, self.view.frame.size.height-70)];
    [self.view addSubview:sortRightView];
}


@end




