//
//  FXCartOrderCell.h
//  FXShoppingDemo
//
//  Created by Benniu15 on 16/4/26.
//  Copyright © 2016年 Wind. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FXCartOrderCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *productImageView;
@property (weak, nonatomic) IBOutlet UIButton    *choseBtn;
@property (weak, nonatomic) IBOutlet UILabel *productName;
@property (weak, nonatomic) IBOutlet UILabel *productDescriptionLab;
@property (weak, nonatomic) IBOutlet UILabel *priceLab;

@property (weak, nonatomic) IBOutlet UIView   *addOrSubtractView;
@property (weak, nonatomic) IBOutlet UIButton *subtarctBtn;
@property (weak, nonatomic) IBOutlet UIButton *addBtn;
@property (weak, nonatomic) IBOutlet UILabel  *countNumLab;

@property (weak, nonatomic) IBOutlet UIView *topLineView;

@end
