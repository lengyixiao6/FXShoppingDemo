//
//  FXAddGoodsView.h
//  testHHHH
//
//  Created by Benniu15 on 16/4/15.
//  Copyright © 2016年 Wind. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FXTypeView.h"
#import "FXBuyCountView.h"
#import "FXGoodsInfoView.h"

@interface FXAddGoodsView : UIView

/* 传入信息*/
@property (nonatomic, copy) NSString *goodsTitle;
@property (nonatomic, copy) NSArray  *goodsPrice;
@property (nonatomic, copy) NSArray  *goodsStock;

/* UI视图*/
@property (nonatomic, strong) FXGoodsInfoView *goodsInfoView;
@property (nonatomic, strong) FXBuyCountView  *buyCountView;
@property (nonatomic, strong) FXTypeView      *typeView;
@property (nonatomic, strong) UIView          *tapView;

/* 确定按钮*/
@property (nonatomic, strong)  UIButton *enterBtn;

//初始化方法
- (instancetype)initWithFrame:(CGRect)frame type:(NSArray *)typeArr typeInfo:(NSArray<NSArray *> *)typeInfoArr;

@end
