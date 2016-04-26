//
//  FXAddGoodsViewController.m
//  testHHHH
//
//  Created by Benniu15 on 16/4/14.
//  Copyright © 2016年 Wind. All rights reserved.
//

#import "FXAddGoodsViewController.h"
#import "FXAddGoodsView.h"

@interface FXAddGoodsViewController (){
    
    UIView * _bgView;
}
@property (nonatomic, strong) FXAddGoodsView * addView;
@property (nonatomic, strong) UIView * maskView;

@end

@implementation FXAddGoodsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];
    
    [self getData];
    [self setupView];
}
- (void)getData{
    
    NSString *str = [[NSBundle mainBundle] pathForResource: @"stock" ofType:@"plist"];
    NSDictionary * stockDic = [[NSDictionary alloc] initWithContentsOfURL:[NSURL fileURLWithPath:str]];
//    NSLog(@"%@",stockDic);
}
- (void)setupView{
 
    _bgView = [[UIView alloc] initWithFrame:self.view.bounds];
    _bgView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_bgView];
    
    [self creatNewView];
    
    //选择商品视图
    [self.view addSubview:self.addView];
    
    //蒙板
    _maskView = [[UIView alloc] initWithFrame:self.view.bounds];
    _maskView.backgroundColor = [UIColor colorWithWhite:0.0 alpha:0.5];
    _maskView.hidden = YES;
    [_bgView insertSubview:_maskView belowSubview:_addView];

}
- (void)creatNewView{
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(50, 80, self.view.frame.size.width-100, 60);
    btn.backgroundColor = [UIColor cyanColor];
    [btn setTitle:@"添加购物车/立即购买" forState:0];
    [btn setTitleColor:[UIColor redColor] forState:0];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [_bgView addSubview:btn];

}
- (void)btnClick{
    
    _maskView.hidden = NO;
    [UIView animateWithDuration:0.35 animations: ^{
        
        CGFloat scale = 0.8;
        _bgView.transform = CGAffineTransformScale(CGAffineTransformIdentity,scale,scale);
        _bgView.center = CGPointMake(self.view.center.x, self.view.center.y-(self.view.frame.size.height*(1.0-scale)*0.375));
        _addView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    }];
}
- (void)cancelChoseGoods{
    
    _maskView.hidden = YES;
    [UIView animateWithDuration:0.35 animations: ^{
        
        _bgView.transform = CGAffineTransformScale(CGAffineTransformIdentity,1.0,1.0);
        _bgView.center = self.view.center;
        _addView.frame = CGRectMake(0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height);
    }];
}
- (FXAddGoodsView *)addView{
    
    if (!_addView) {
        
        NSArray * arr1 = @[@"20cm",@"120cm",@"80cm",@"50cm"];
        NSArray * arr2 = @[@"红色",@"大尺码的绿色",@"中号黄色",@"蓝色",@"很大很大的黑色",@"花边",@"最大尺寸粉色"];
        NSArray * array = @[arr2,arr1];
        NSArray * typeArr = @[@"雨伞颜色",@"尺寸"];
        _addView = [[FXAddGoodsView alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height, self.view.frame.size.width, self.view.frame.size.height) type:typeArr typeInfo:array];
        [_addView.goodsInfoView.cancelBtn addTarget:self action:@selector(cancelChoseGoods) forControlEvents:UIControlEventTouchUpInside];
        [_addView.tapView addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(cancelChoseGoods)]];
//        NSArray * priceArr = @[@"78",@"342",@"56",@"67",@"112",@"34"];
//        NSArray * stockArr = @[@"34",@"345",@"54",@"999",@"989",@"452"];
//        _addView.goodsTitle = @"玫瑰诱惑 ¥88";
//        _addView.goodsPrice = priceArr;
//        _addView.goodsStock = stockArr;
    }
    return _addView;
}

@end





