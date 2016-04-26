//
//  FXCartCellHeaderView.m
//  FXShoppingDemo
//
//  Created by Benniu15 on 16/4/26.
//  Copyright © 2016年 Wind. All rights reserved.
//

#import "FXCartCellHeaderView.h"

@implementation FXCartCellHeaderView

+ (FXCartCellHeaderView *)creatFXCartCellHeaderView{
    
    NSArray * array = [[NSBundle mainBundle] loadNibNamed:@"FXCartCellHeaderView" owner:nil options:nil];
    return array[0];
}
- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    
    self = [super initWithCoder:aDecoder];
    if (self) {
        
        [self setupView];
    }
    return self;
}
- (void)setupView{
    

}


@end


