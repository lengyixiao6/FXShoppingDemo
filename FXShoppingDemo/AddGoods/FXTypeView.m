//
//  FXTypeView.m
//  testHHHH
//
//  Created by Benniu15 on 16/4/14.
//  Copyright © 2016年 Wind. All rights reserved.
//

#import "FXTypeView.h"

@implementation FXTypeView{
    
    NSInteger _arrCount;
}

#define KColor [UIColor colorWithRed:0.92 green:0.92 blue:0.92 alpha:1]

- (instancetype)initWithFrame:(CGRect)frame andDatasource:(NSArray *)datas typeName:(NSString *)typeName{
    
    self = [super initWithFrame:frame];
    if (self) {
        
        CGRect rect = frame;
        rect.size.height = [self setupViewType:typeName withDatasource:datas];
        self.frame = rect;
    }
    return self;
}
- (CGFloat)setupViewType:(NSString *)typeName withDatasource:(NSArray *)datas{
    
    _arrCount = datas.count;
    
    UILabel *lab = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, self.frame.size.width-20, 20)];
    lab.text = typeName;
    lab.textColor = [UIColor blackColor];
    lab.font = [UIFont systemFontOfSize:14];
    [self addSubview:lab];
    
    CGFloat positionX = 10.0;
    CGFloat positionY = 40.0;
    CGFloat minSpace  = 20.0;
    for (int i = 0; i < datas.count; i ++) {
        
        UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.tag = -1000 + i;
        [btn setBackgroundColor:KColor];
        btn.titleLabel.font = [UIFont systemFontOfSize:13];
        [btn setTitleColor:[UIColor blackColor] forState:0];
        [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
        [btn setTitle:[datas objectAtIndex:i] forState:0];
        btn.layer.cornerRadius = 5.0;
        [btn.layer setMasksToBounds:YES];
        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:btn];
        
        //计算每条数据的宽
        NSDictionary *dic = [NSDictionary dictionaryWithObject:[UIFont boldSystemFontOfSize:13] forKey:NSFontAttributeName];
        CGSize size = [datas[i] sizeWithAttributes:dic];
        
        if (positionX > self.frame.size.width-20-size.width) {
            
            positionX = 10.0;
            positionY += 30.0;
        }
        btn.frame = CGRectMake(positionX, positionY, size.width + minSpace, 25);
        positionX  += size.width + minSpace + 5;
    }
    positionY += 30.0;
    UIView *lineV = [[UIView alloc] initWithFrame:CGRectMake(10, positionY+9.5, self.frame.size.width-20, 0.5)];
    lineV.backgroundColor = [UIColor lightGrayColor];
    [self addSubview:lineV];

    return positionY + 10;
}

-(void)btnClick:(UIButton *)btn{
    
    btn.selected = !btn.selected;
    if (btn.selected) {
        
        btn.backgroundColor = [UIColor redColor];
        for (int i = 0; i < _arrCount; i ++) {
            
            if (i != 1000 + btn.tag) {
                
                UIButton * buutton = [self viewWithTag:-1000+i];
                buutton.selected = NO;
                buutton.backgroundColor = KColor;
            }
        }
        
    }else{
        
        btn.backgroundColor = KColor;
    }
    if ([self.delegate respondsToSelector:@selector(buttonSelectIndex:)]) {
        
        [self.delegate buttonSelectIndex:1000 + btn.tag];
    }
}


@end
