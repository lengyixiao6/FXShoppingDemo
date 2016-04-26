//
//  FXCartOrderView.m
//  FXShoppingDemo
//
//  Created by Benniu15 on 16/4/26.
//  Copyright © 2016年 Wind. All rights reserved.
//

#import "FXCartOrderView.h"
#import "FXCartCellHeaderView.h"
#import "FXCartOrderCell.h"

@interface FXCartOrderView () <UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, strong) UITableView     *cartTableView;
@property (nonatomic, strong) NSMutableArray  *dataArray;

@end

@implementation FXCartOrderView

- (instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        
        self.dataArray = [NSMutableArray arrayWithArray:@[@"",@"",@""]];
        self.backgroundColor = [UIColor whiteColor];
        [self setupView];
    }
    return self;
}

- (void)setupView{
    
    self.cartTableView = [[UITableView alloc] initWithFrame:self.bounds style:UITableViewStyleGrouped];
    self.cartTableView.dataSource = self;
    self.cartTableView.delegate = self;
    self.cartTableView.rowHeight = 100;
    self.cartTableView.backgroundColor = [UIColor whiteColor];
    self.cartTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.cartTableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    [self.cartTableView registerNib:[UINib nibWithNibName:@"FXCartOrderCell" bundle:nil] forCellReuseIdentifier:@"cartCell"];
    [self addSubview:self.cartTableView];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    if (section == 0) {
        
        return 2;
    }else if (section == 1){
        
        return 1;
    }else{
        
        return 2;
    }
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 3;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    FXCartOrderCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cartCell"];
    [cell.choseBtn addTarget:self action:@selector(choseClick:) forControlEvents:UIControlEventTouchUpInside];
    if (indexPath.row != 0) {
        
        cell.topLineView.hidden = NO;
    }else{
        
        cell.topLineView.hidden = YES;
    }
    
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    
    return 40;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    
    return 15;
}
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    
    UIView * bgView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, 15)];
    bgView.backgroundColor = [UIColor colorWithWhite:0.9 alpha:1];
    
    UIView * lineView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, bgView.frame.size.width, 1)];
    lineView.backgroundColor = [UIColor colorWithWhite:0.85 alpha:1];
    [bgView addSubview:lineView];
    
    return bgView;
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    
    FXCartCellHeaderView * cartHeaderView = [FXCartCellHeaderView creatFXCartCellHeaderView];
   
    return cartHeaderView;
}
//选中
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}
//delete cell
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return YES;
}
- (NSString *)tableView:(UITableView *)tableView titleForDeleteConfirmationButtonForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return @"删除";
}
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        
        [self.dataArray removeObjectAtIndex:0];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}
//cell的按钮点击选中
- (void)choseClick:(UIButton *)btn{
    
    btn.selected = !btn.selected;
}

@end




