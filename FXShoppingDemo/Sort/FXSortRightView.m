//
//  FXSortRightView.m
//  FXShoppingDemo
//
//  Created by Benniu15 on 16/4/25.
//  Copyright © 2016年 Wind. All rights reserved.
//

#import "FXSortRightView.h"
#import "FXSortRightCell.h"

@interface FXSortRightView () <UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>

@property (nonatomic, strong) UICollectionView *sortCollectionView;
@property (nonatomic, strong) UICollectionReusableView *topView;
@property (nonatomic, strong) UIImageView *bannerView;

/**
 *  测试数据
 */
@property (nonatomic, strong) NSArray *dataArray;
@property (nonatomic, strong) NSArray *dataArray1;
@property (nonatomic, strong) UILabel *sectionTitlel;

@end

#define BGColor   [UIColor colorWithWhite:0.95 alpha:1]
#define Width     self.frame.size.width
#define Height    self.frame.size.height
#define Banner_H  Width*0.5

@implementation FXSortRightView

- (instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        
        self.dataArray = @[@"99.jpg",@"22.jpg",@"33.jpg",@"44.jpg",@"55.jpg",@"66.jpg",@"77.jpg",@"88.jpg",@"11.jpg"];
        self.dataArray1 = @[@"超博笔记本",@"滤芯龙头",@"黄金龙头",@"不锈钢龙头",@"黄金螺丝钉",@"LG N7",@"Mac 电脑",@"Nokia X660",@"淋浴喷洒"];
        self.backgroundColor = BGColor;
        [self setupView];
    }
    return self;
}

- (void)setupView{

    UICollectionViewFlowLayout * layout = [[UICollectionViewFlowLayout alloc] init];
    layout.minimumInteritemSpacing = 5;
    layout.minimumLineSpacing = 5;
    layout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 5);
    
    self.sortCollectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, Width, Height) collectionViewLayout:layout];
    self.sortCollectionView.dataSource = self;
    self.sortCollectionView.delegate = self;
    self.sortCollectionView.backgroundColor = BGColor;
    self.sortCollectionView.contentInset = UIEdgeInsetsMake(Banner_H, 0, 0, 0);
    [self.sortCollectionView registerNib:[UINib nibWithNibName:@"FXSortRightCell" bundle:nil] forCellWithReuseIdentifier:@"sortRight"];
    [self.sortCollectionView registerClass:[UICollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"header"];
    [self addSubview:self.sortCollectionView];
    
    [self.sortCollectionView addSubview:self.bannerView];
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    return 9;
}
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    
    return 3;
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    return CGSizeMake((Width-20)/3, (Width-20)/3 + 30);
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    FXSortRightCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"sortRight" forIndexPath:indexPath];
    
    cell.sortImageView.image = [UIImage imageNamed:self.dataArray[indexPath.row]];
    cell.sortNameLab.text = self.dataArray1[indexPath.row];
    
    return cell;
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section{
    
    if (section == 0) {
        
        return CGSizeMake(Width, 10);
    }
    return CGSizeMake(Width, 50);
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
    NSLog(@"点击了：%ld组 第%ld个",indexPath.section,indexPath.row);
}
- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath{
    
    self.topView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"header" forIndexPath:indexPath];
    
    if (indexPath.section != 0) {
        
        [self.topView addSubview:self.sectionTitlel];
    }
    return self.topView;
}
- (UIView *)sectionTitlel{
    
    if (!_sectionTitlel) {
        
        _sectionTitlel = [[UILabel alloc]initWithFrame:CGRectMake(0, 10, self.topView.frame.size.width, 40)];
        _sectionTitlel.text = @"五金电子";
        _sectionTitlel.font = [UIFont systemFontOfSize:14];
    }
    return _sectionTitlel;
}
- (UIView *)bannerView{
    
    if (!_bannerView) {
        
        _bannerView = [[UIImageView alloc] initWithFrame:CGRectMake(0, -Banner_H, Width-5, Banner_H)];
        _bannerView.image = [UIImage imageNamed:@"1.jpg"];
        _bannerView.backgroundColor = [UIColor cyanColor];
    }
    return _bannerView;
}

@end




