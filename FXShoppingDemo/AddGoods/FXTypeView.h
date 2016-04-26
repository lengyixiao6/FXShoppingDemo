//
//  FXTypeView.h
//  testHHHH
//
//  Created by Benniu15 on 16/4/14.
//  Copyright © 2016年 Wind. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol FXTypeViewDelegete <NSObject>

-(void)buttonSelectIndex:(NSInteger)index;

@end


@interface FXTypeView : UIView

@property(nonatomic, strong) id<FXTypeViewDelegete> delegate;

//传来的frame的height无效，会重新设定
- (instancetype)initWithFrame:(CGRect)frame andDatasource:(NSArray *)datas typeName:(NSString *)typeName;

@end
