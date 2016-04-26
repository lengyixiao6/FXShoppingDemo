//
//  FXCartOrderCell.m
//  FXShoppingDemo
//
//  Created by Benniu15 on 16/4/26.
//  Copyright © 2016年 Wind. All rights reserved.
//

#import "FXCartOrderCell.h"

@implementation FXCartOrderCell

- (void)awakeFromNib {
    
    self.addOrSubtractView.backgroundColor = [UIColor clearColor];
    self.addOrSubtractView.layer.cornerRadius = 3.0;
    self.addOrSubtractView.layer.masksToBounds = YES;
    self.addOrSubtractView.layer.borderColor = [UIColor grayColor].CGColor;
    self.addOrSubtractView.layer.borderWidth = 0.5;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


@end
