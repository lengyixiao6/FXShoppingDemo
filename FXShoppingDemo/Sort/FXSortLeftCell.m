//
//  FXSortLeftCell.m
//  FXShoppingDemo
//
//  Created by Benniu15 on 16/4/25.
//  Copyright © 2016年 Wind. All rights reserved.
//

#import "FXSortLeftCell.h"

@implementation FXSortLeftCell

#define BGColor [UIColor colorWithWhite:0.95 alpha:1]

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    self.backgroundColor = BGColor;
    if (self.selected) {
        
        self.leftLineView.hidden = NO;
        self.sortTitleLab.textColor = [UIColor colorWithRed:1.0 green:0.0 blue:128/255.0 alpha:1];
        self.contentView.backgroundColor = [UIColor clearColor];
    }else{
        
        self.leftLineView.hidden = YES;
        self.sortTitleLab.textColor = [UIColor blackColor];
        self.contentView.backgroundColor = [UIColor colorWithWhite:0.9 alpha:1];
    }
}

- (void)awakeFromNib{
    
    
}

@end




