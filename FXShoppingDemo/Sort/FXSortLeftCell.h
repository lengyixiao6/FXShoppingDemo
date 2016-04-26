//
//  FXSortLeftCell.h
//  FXShoppingDemo
//
//  Created by Benniu15 on 16/4/25.
//  Copyright © 2016年 Wind. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, CellStyle){
    
    CellStyleDefault,
    CellStyleLeftLine,
    CellStyleRightLine,
    CellStyleBottomLine
};

@interface FXSortLeftCell : UITableViewCell

@property (nonatomic, assign) CellStyle cellChoseStyle;
@property (weak, nonatomic) IBOutlet UILabel  *sortTitleLab;
@property (weak, nonatomic) IBOutlet UIView   *leftLineView;

@end


