//
//  FXAddGoodsView.m
//  testHHHH
//
//  Created by Benniu15 on 16/4/15.
//  Copyright © 2016年 Wind. All rights reserved.
//

#import "FXAddGoodsView.h"

@interface FXAddGoodsView ()<FXTypeViewDelegete>{
    
    CGFloat _typeViewBottomY;
    
    //选择区域高Y
    CGFloat pHeight;
}

/*下部背景*/
@property (nonatomic, strong)  UIView *bgView;

@end

@implementation FXAddGoodsView

- (instancetype)initWithFrame:(CGRect)frame type:(NSArray *)typeArr typeInfo:(NSArray<NSArray *> *)typeInfoArr{
    
    self = [super initWithFrame:frame];
    if (self) {
        
        pHeight = self.frame.size.height*0.7;
        self.backgroundColor = [UIColor clearColor];
        [self setupViewType:typeArr typeInfo:typeInfoArr];
    }
    return self;
}
- (void)setTypeViewInfoType:(NSArray *)typeArr typeInfo:(NSArray<NSArray *> *)typeInfoArr{
    
    CGFloat p_height = 100.0;
    for (int i = 0; i < typeInfoArr.count; i ++) {
        
        NSArray * arr = typeInfoArr[i];
        FXTypeView * typeView = [[FXTypeView alloc] initWithFrame:CGRectMake(0, p_height, self.frame.size.width, 0) andDatasource:arr typeName:typeArr[i]];
        typeView.delegate = self;
        [self.bgView addSubview:typeView];
        p_height += typeView.frame.size.height;
    }
    _typeViewBottomY = p_height;
}
- (void)setupViewType:(NSArray *)typeArr typeInfo:(NSArray<NSArray *> *)typeInfoArr{
    
    [self addSubview:self.tapView];
    [self addSubview:self.bgView];
    [self.bgView addSubview:self.goodsInfoView];
    
    [self setTypeViewInfoType:typeArr typeInfo:typeInfoArr];
    
    [self.bgView addSubview:self.buyCountView];
    [self.bgView addSubview:self.enterBtn];
}
- (UIView *)bgView{
    
    if (!_bgView) {
        
        _bgView = [[UIView alloc] initWithFrame:CGRectMake(0, self.frame.size.height-pHeight, self.frame.size.width, pHeight)];
        _bgView.backgroundColor = [UIColor whiteColor];
    }
    return _bgView;
}
- (FXGoodsInfoView *)goodsInfoView{
    
    if (!_goodsInfoView) {
        
        _goodsInfoView = [[FXGoodsInfoView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width,100)];
    }
    return _goodsInfoView;
}
- (FXBuyCountView *)buyCountView{
    
    if (!_buyCountView) {
        
        _buyCountView = [[FXBuyCountView alloc] initWithFrame:CGRectMake(0, _typeViewBottomY, self.frame.size.width, 50)];
    }
    return _buyCountView;
}
- (UIButton *)enterBtn{
    
    if (!_enterBtn) {
        
        _enterBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _enterBtn.frame = CGRectMake(0, self.bgView.frame.size.height-44, self.bgView.frame.size.width, 44);
        _enterBtn.backgroundColor = [UIColor colorWithRed:240/255.0 green:12/255.0 blue:25/255.0 alpha:1];
        _enterBtn.titleLabel.font = [UIFont systemFontOfSize:16];
        [_enterBtn setTitle:@"确定" forState:0];
        [_enterBtn setTitleColor:[UIColor whiteColor] forState:0];
        [_enterBtn setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    }
    return _enterBtn;
}
- (UIView *)tapView{
    
    if (!_tapView) {
        
        _tapView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.bgView.frame.size.width, self.frame.size.height-pHeight)];
        _tapView.backgroundColor = [UIColor clearColor];
    }
    return _tapView;
}

#pragma mark - FXTypeViewDelegete
- (void)buttonSelectIndex:(NSInteger)index{
    
    NSLog(@"%ld",index);
}

@end





