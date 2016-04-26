//
//  FXGoodsInfoView.h
//  testHHHH
//
//  Created by Benniu15 on 16/4/15.
//  Copyright © 2016年 Wind. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FXGoodsInfoView : UIView

//取消按钮
@property (nonatomic, strong)  UIButton *cancelBtn;

/*价格名称*/
@property (nonatomic, strong)  UILabel *goodsPriceTitle;
/*商品库存*/
@property (nonatomic, strong)  UILabel *goodsStock;
/*商品图片*/
@property (nonatomic, strong)  UIImage *goodsImage;
/*已经选择*/
@property (nonatomic, strong)  UILabel *goodsChose;

@end
