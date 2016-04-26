//
//  FXCartSettlementView.m
//  FXShoppingDemo
//
//  Created by Benniu15 on 16/4/25.
//  Copyright © 2016年 Wind. All rights reserved.
//

#import "FXCartSettlementView.h"

@interface FXCartSettlementView ()

@property (nonatomic, strong) UIButton * btn_choseAll;
@property (nonatomic, strong) UIButton * btn_settlement;
@property (nonatomic, strong) UILabel *choseAllLab;
@property (nonatomic, strong) UILabel *totalLab;

@end

@implementation FXCartSettlementView

- (instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {

        self.backgroundColor = [UIColor whiteColor];
        [self setupView];
    }
    return self;
}

- (void)setupView{
 
    [self addSubview:self.btn_choseAll];
    [self addSubview:self.choseAllLab];
    [self addSubview:self.btn_settlement];
    [self addSubview:self.totalLab];
    
    UIView * lineView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, 0.5)];
    lineView.backgroundColor = [UIColor lightGrayColor];
    [self addSubview:lineView];
 
}
- (void)btnChoseAllClick:(UIButton *)btn{
    
    btn.selected = !btn.selected;
}
- (void)btnSettlementClick:(UIButton *)btn{
    
    NSLog(@"结算");
}
- (UIButton *)btn_choseAll{
    
    if (!_btn_choseAll) {
        
        _btn_choseAll = [UIButton buttonWithType:UIButtonTypeCustom];
        _btn_choseAll.frame = CGRectMake(10, (self.frame.size.height-25)*0.5, 25, 25);
        [_btn_choseAll setImage:[UIImage imageNamed:@"normal"] forState:UIControlStateNormal];
        [_btn_choseAll setImage:[UIImage imageNamed:@"select"] forState:UIControlStateSelected];
        [_btn_choseAll addTarget:self action:@selector(btnChoseAllClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _btn_choseAll;
}
- (UILabel *)choseAllLab{
    
    if (!_choseAllLab) {
        
        _choseAllLab = [[UILabel alloc] initWithFrame:CGRectMake(40, (self.frame.size.height-20)*0.5, 30, 20)];
        _choseAllLab.text = @"全选";
        _choseAllLab.textColor = [UIColor darkGrayColor];
        _choseAllLab.font = [UIFont systemFontOfSize:15];
        
    }
    return _choseAllLab;
}
- (UILabel *)totalLab{
    
    if (!_totalLab) {
        
        _totalLab = [[UILabel alloc] initWithFrame:CGRectMake(75, (self.frame.size.height-20)*0.5, self.frame.size.width-180, 20)];
        _totalLab.text = @"合计:¥888";
        _totalLab.textAlignment = NSTextAlignmentCenter;
        _totalLab.textColor = [UIColor redColor];
        _totalLab.font = [UIFont systemFontOfSize:15];
    }
    return _totalLab;
}
- (UIButton *)btn_settlement{
    
    if (!_btn_settlement) {
        
        _btn_settlement = [UIButton buttonWithType:UIButtonTypeCustom];
        _btn_settlement.frame = CGRectMake(self.frame.size.width-100, 0, 100, self.frame.size.height);
        _btn_settlement.backgroundColor = [UIColor redColor];
        _btn_settlement.titleLabel.font = [UIFont systemFontOfSize:16];
        [_btn_settlement setTitle:@"结算(0)" forState:UIControlStateNormal];
        [_btn_settlement setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_btn_settlement setTitleColor:[UIColor lightGrayColor] forState:UIControlStateHighlighted];
        [_btn_settlement addTarget:self action:@selector(btnSettlementClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _btn_settlement;
}



@end
