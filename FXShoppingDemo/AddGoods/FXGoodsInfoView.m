//
//  FXGoodsInfoView.m
//  testHHHH
//
//  Created by Benniu15 on 16/4/15.
//  Copyright © 2016年 Wind. All rights reserved.
//

#import "FXGoodsInfoView.h"

@implementation FXGoodsInfoView

- (instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        
        CGRect rect = frame;
        rect.size.height = 100;
        self.frame = rect;
        [self setupView];
    }
    return self;
}

- (void)setupView{
 
    UIImageView * goodsImgV = [[UIImageView alloc] initWithFrame:CGRectMake(10, -30, 120, 120)];
    goodsImgV.image = self.goodsImage;
    goodsImgV.image = [UIImage imageNamed:@"1.jpg"];
    goodsImgV.layer.masksToBounds = YES;
    goodsImgV.layer.cornerRadius = 5.0;
    goodsImgV.layer.borderColor = [UIColor whiteColor].CGColor;
    goodsImgV.layer.borderWidth = 5.0;
    [self addSubview:goodsImgV];
    
    UILabel * goodsNameL = [[UILabel alloc] initWithFrame:CGRectMake(140, 20, self.frame.size.width-150, 20)];
    goodsNameL.textColor = [UIColor orangeColor];
    goodsNameL.font = [UIFont systemFontOfSize:14];
    goodsNameL.text = @"玫瑰雨伞  ¥88";
    self.goodsPriceTitle = goodsNameL;
    [self addSubview:self.goodsPriceTitle];
    
    UILabel * goodsStockL = [[UILabel alloc] initWithFrame:CGRectMake(140, 45, self.frame.size.width-150, 20)];
    goodsStockL.font = [UIFont systemFontOfSize:13];
    goodsStockL.text = @"库存54件";
    self.goodsStock = goodsStockL;
    [self addSubview:self.goodsStock];
    
    UILabel * goodsChoseL = [[UILabel alloc] initWithFrame:CGRectMake(140, 70, self.frame.size.width-150, 20)];
    goodsChoseL.font = [UIFont systemFontOfSize:13];
    goodsChoseL.text = @"已选: \"花边\" \"XXL\"";
    self.goodsChose = goodsChoseL;
    [self addSubview:self.goodsChose];
    
    self.cancelBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.cancelBtn.frame = CGRectMake(self.frame.size.width-35, 5, 30, 30);
    [self.cancelBtn setImage:[UIImage imageNamed:@"close"] forState:UIControlStateNormal];
    [self addSubview:self.cancelBtn];
    
    UIView *lineV = [[UIView alloc] initWithFrame:CGRectMake(10, self.frame.size.height-0.5, self.frame.size.width-20, 0.5)];
    lineV.backgroundColor = [UIColor lightGrayColor];
    [self addSubview:lineV];
}

@end


