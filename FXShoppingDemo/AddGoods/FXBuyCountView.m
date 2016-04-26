//
//  FXBuyCountView.m
//  testHHHH
//
//  Created by Benniu15 on 16/4/14.
//  Copyright © 2016年 Wind. All rights reserved.
//

#import "FXBuyCountView.h"

@implementation FXBuyCountView

- (instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        
        CGRect rect = frame;
        rect.size.height = 50;
        self.frame = rect;
        [self setupView];
    }
    return self;
}

- (void)setupView{
    
    //浅灰色
    UIColor * bgColor = [UIColor colorWithRed:0.9 green:0.9 blue:0.9 alpha:1];

    UILabel * buyCountLab = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 100, 30)];
    buyCountLab.text = @"购买数量";
    buyCountLab.textColor = [UIColor blackColor];
    buyCountLab.font = [UIFont systemFontOfSize:14];
    [self addSubview:buyCountLab];

    //+
    self.btn_add= [UIButton buttonWithType:UIButtonTypeCustom];
    self.btn_add.frame = CGRectMake(self.frame.size.width-10-40, 10,40, 30);
    [self.btn_add setBackgroundColor:bgColor];
    [self.btn_add setTitleColor:[UIColor grayColor] forState:0];
    [self.btn_add setTitleColor:[UIColor blackColor] forState:UIControlStateHighlighted];
    self.btn_add.titleLabel.font = [UIFont systemFontOfSize:25];
    [self.btn_add setTitle:@"+" forState:0];
    [self.btn_add addTarget:self action:@selector(addBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:self.btn_add];
    
    self.buyCountTextField = [[UITextField alloc] initWithFrame:CGRectMake(self.btn_add.frame.origin.x -42, 10, 40, 30)];
    self.buyCountTextField.text = @"1";
    self.buyCountTextField.textAlignment = NSTextAlignmentCenter;
    self.buyCountTextField.font = [UIFont systemFontOfSize:16];
    self.buyCountTextField.backgroundColor = bgColor;
    self.buyCountTextField.keyboardType = UIKeyboardTypeNumbersAndPunctuation;
    [self addSubview:self.buyCountTextField];
    
    //-
    self.btn_reduce= [UIButton buttonWithType:UIButtonTypeCustom];
    self.btn_reduce.frame = CGRectMake(self.buyCountTextField.frame.origin.x -42, 10, 40, 30);
    [self.btn_reduce setBackgroundColor:bgColor];
    [self.btn_reduce setTitleColor:[UIColor grayColor] forState:0];
    [self.btn_reduce setTitleColor:[UIColor blackColor] forState:UIControlStateHighlighted];
    self.btn_reduce.titleLabel.font = [UIFont systemFontOfSize:25];
    [self.btn_reduce setTitle:@"-" forState:0];
    [self.btn_reduce addTarget:self action:@selector(reduceBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:self.btn_reduce];
    
    UIView *lineV = [[UIView alloc] initWithFrame:CGRectMake(10, self.frame.size.height-0.5, self.frame.size.width-20, 0.5)];
    lineV.backgroundColor = [UIColor lightGrayColor];
    [self addSubview:lineV];

}

- (void)addBtnClick{
    
    NSInteger count = [self.buyCountTextField.text integerValue];
    count ++;
    self.buyCountTextField.text = [NSString stringWithFormat:@"%ld",count];
}
- (void)reduceBtnClick{
    
    NSInteger count = [self.buyCountTextField.text integerValue];
    count --;
    self.buyCountTextField.text = [NSString stringWithFormat:@"%ld",count];
    if (count <= 1) {
        
        self.buyCountTextField.text = @"1";
    }
}



@end
