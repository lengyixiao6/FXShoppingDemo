//
//  FXSortLeftBarView.m
//  FXShoppingDemo
//
//  Created by Benniu15 on 16/4/25.
//  Copyright © 2016年 Wind. All rights reserved.
//

#import "FXSortLeftBarView.h"
#import "FXSortLeftCell.h"

@interface FXSortLeftBarView () <UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, strong) UITableView *sortTableView;
@property (nonatomic, assign) BOOL isFirst;

@end

#define BGColor [UIColor colorWithWhite:0.95 alpha:1]

@implementation FXSortLeftBarView

- (instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        
        self.isFirst = YES;
        self.backgroundColor = BGColor;
        [self setupView];
    }
    return self;
}

- (void)setupView{
    
    self.sortTableView = [[UITableView alloc] initWithFrame:self.bounds style:UITableViewStylePlain];
    self.sortTableView.delegate = self;
    self.sortTableView.dataSource = self;
    self.sortTableView.rowHeight = 50;
    self.sortTableView.backgroundColor = BGColor;
    self.sortTableView.showsVerticalScrollIndicator = NO;
    [self.sortTableView registerNib:[UINib nibWithNibName:@"FXSortLeftCell" bundle:nil] forCellReuseIdentifier:@"sortLeft"];
    [self addSubview:self.sortTableView];

}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.dataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    FXSortLeftCell * cell = [tableView dequeueReusableCellWithIdentifier:@"sortLeft"];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.sortTitleLab.text = self.dataArray[indexPath.row];
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSLog(@"点击了：%ld",indexPath.row);
    [tableView scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionTop animated:YES];
}
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (self.isFirst) {
        
        if (indexPath.row == 0) {
            
            cell.selected = YES;
            self.isFirst = NO;
        }
    }
    
    if ([cell respondsToSelector:@selector(setSeparatorInset:)]){
        
        [cell setSeparatorInset:UIEdgeInsetsZero];
    }
    if ([cell respondsToSelector:@selector(setPreservesSuperviewLayoutMargins:)]){
        
        [cell setPreservesSuperviewLayoutMargins:NO];
    }
    if ([cell respondsToSelector:@selector(setLayoutMargins:)]){
        
        [cell setLayoutMargins:UIEdgeInsetsZero];
    }
}

- (void)setDataArray:(NSArray *)dataArray{
    
    _dataArray = dataArray;
    [self.sortTableView reloadData];
}

@end




