//
//  FXSortSearchView.m
//  FXShoppingDemo
//
//  Created by Benniu15 on 16/4/25.
//  Copyright © 2016年 Wind. All rights reserved.
//

#import "FXSortSearchView.h"

@implementation FXSortSearchView

- (instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        
        [self setupView];
    }
    return self;
}

- (void)setupView{
 
    UITextField * inputText = [[UITextField alloc] initWithFrame:CGRectMake(20, 10, self.frame.size.width-40, self.frame.size.height-20)];
    inputText.borderStyle = UITextBorderStyleNone;
    inputText.placeholder = @"🔍请输入要搜索的商品";
    inputText.font = [UIFont systemFontOfSize:14];
    inputText.textAlignment = NSTextAlignmentCenter;
    inputText.layer.borderColor = [UIColor lightGrayColor].CGColor;
    inputText.layer.borderWidth = 1.0;
    inputText.layer.cornerRadius = 8.0;
    inputText.layer.masksToBounds = YES;
    [self addSubview:inputText];
    
}

@end
