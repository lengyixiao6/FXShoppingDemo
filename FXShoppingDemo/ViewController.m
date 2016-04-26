//
//  ViewController.m
//  FXShoppingDemo
//
//  Created by Benniu15 on 16/4/15.
//  Copyright © 2016年 Wind. All rights reserved.
//

#import "ViewController.h"
#import "FXAddGoodsViewController.h"
#import "FXProductSortController.h"
#import "FXCartController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
}

- (void)setupUI{
    
    UIButton * btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn1.tag = 100;
    btn1.frame = CGRectMake(40, 60, self.view.frame.size.width-80, 40);
    btn1.backgroundColor = [UIColor cyanColor];
    [btn1 setTitle:@"产品详情" forState:0];
    [btn1 setTitleColor:[UIColor darkGrayColor] forState:0];
    [btn1 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];
    
    UIButton * btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn2.tag = 200;
    btn2.frame = CGRectMake(40, 120, self.view.frame.size.width-80, 40);
    btn2.backgroundColor = [UIColor cyanColor];
    [btn2 setTitle:@"添加购物车" forState:0];
    [btn2 setTitleColor:[UIColor darkGrayColor] forState:0];
    [btn2 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn2];
    
    UIButton * btn3 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn3.tag = 300;
    btn3.frame = CGRectMake(40, 180, self.view.frame.size.width-80, 40);
    btn3.backgroundColor = [UIColor cyanColor];
    [btn3 setTitle:@"产品分类" forState:0];
    [btn3 setTitleColor:[UIColor darkGrayColor] forState:0];
    [btn3 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn3];
    
    UIButton * btn4 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn4.tag = 400;
    btn4.frame = CGRectMake(40, 240, self.view.frame.size.width-80, 40);
    btn4.backgroundColor = [UIColor cyanColor];
    [btn4 setTitle:@"购物车" forState:0];
    [btn4 setTitleColor:[UIColor darkGrayColor] forState:0];
    [btn4 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn4];
    
    UIButton * btn5 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn5.tag = 500;
    btn5.frame = CGRectMake(40, 300, self.view.frame.size.width-80, 40);
    btn5.backgroundColor = [UIColor orangeColor];
    [btn5 setTitle:@"支付宝支付" forState:0];
    [btn5 setTitleColor:[UIColor darkGrayColor] forState:0];
    [btn5 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn5];
    
    UIButton * btn6 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn6.tag = 600;
    btn6.frame = CGRectMake(40, 360, self.view.frame.size.width-80, 40);
    btn6.backgroundColor = [UIColor orangeColor];
    [btn6 setTitle:@"微信支付" forState:0];
    [btn6 setTitleColor:[UIColor darkGrayColor] forState:0];
    [btn6 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn6];
    
}
- (void)btnClick:(UIButton *)btn{
    
    if (btn.tag == 100) {
        
        
    }else if (btn.tag == 200){
        
        FXAddGoodsViewController * addGoodsVC = [[FXAddGoodsViewController alloc] init];
        [self presentViewController:addGoodsVC animated:YES completion:nil];
    }else if (btn.tag == 300){
        
        FXProductSortController * sortVC = [[FXProductSortController alloc] init];
        [self presentViewController:sortVC animated:YES completion:nil];
    }else if (btn.tag == 400){
        
        FXCartController * cartVC = [[FXCartController alloc] init];
        [self presentViewController:cartVC animated:YES completion:nil];
    }
    else if (btn.tag == 500){
        
       
    }
    else if (btn.tag == 600){
    
        
    }
}


@end




