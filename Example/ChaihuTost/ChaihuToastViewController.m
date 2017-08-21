//
//  ChaihuToastViewController.m
//  ChaihuTost
//
//  Created by chaihu@jiayukang.com on 08/21/2017.
//  Copyright (c) 2017 chaihu@jiayukang.com. All rights reserved.
//

#import "ChaihuToastViewController.h"
#import <ChaihuTost/Toast.h>

#define Key_DeBugColor [UIColor colorWithRed:arc4random() % 251 / 250.0 green:arc4random() % 251 / 250.0 blue:arc4random() % 251 / 250.0 alpha:1.0] // 调试使用的随机色
#define Key_ScreenWith [UIScreen mainScreen].bounds.size.width

@interface ChaihuToastViewController ()

@end

@implementation ChaihuToastViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIButton *button0 = [[UIButton alloc] initWithFrame:CGRectMake(0, 20, Key_ScreenWith, 50)];
    [button0 setBackgroundColor:Key_DeBugColor];
    [self.view addSubview:button0];
    [button0 addTarget:self action:@selector(stopActive) forControlEvents:UIControlEventTouchUpInside];
    [button0 setTitle:@"停止" forState:UIControlStateNormal];
    
    UIButton *button1 = [[UIButton alloc] initWithFrame:CGRectMake(0, 100, Key_ScreenWith, 50)];
    [button1 setBackgroundColor:Key_DeBugColor];
    [self.view addSubview:button1];
    [button1 addTarget:self action:@selector(showActive) forControlEvents:UIControlEventTouchUpInside];
    [button1 setTitle:@"提示（不带菊花）" forState:UIControlStateNormal];
    
    UIButton *button2 = [[UIButton alloc] initWithFrame:CGRectMake(0, 180, Key_ScreenWith, 50)];
    [button2 setBackgroundColor:Key_DeBugColor];
    [self.view addSubview:button2];
    [button2 addTarget:self action:@selector(showWithText) forControlEvents:UIControlEventTouchUpInside];
    [button2 setTitle:@"提示信息" forState:UIControlStateNormal];
    
    UIButton *button3 = [[UIButton alloc] initWithFrame:CGRectMake(0, 260, Key_ScreenWith, 50)];
    [button3 setBackgroundColor:Key_DeBugColor];
    [self.view addSubview:button3];
    [button3 addTarget:self action:@selector(showTextWithDuration) forControlEvents:UIControlEventTouchUpInside];
    [button3 setTitle:@"提示信息（自动消失）" forState:UIControlStateNormal];
    
    UIButton *button4 = [[UIButton alloc] initWithFrame:CGRectMake(0, 340, Key_ScreenWith, 50)];
    [button4 setBackgroundColor:Key_DeBugColor];
    [self.view addSubview:button4];
    [button4 addTarget:self action:@selector(showTextWithTop) forControlEvents:UIControlEventTouchUpInside];
    [button4 setTitle:@"提示信息！（通过top定义显示位置）" forState:UIControlStateNormal];
    
    UIButton *button5 = [[UIButton alloc] initWithFrame:CGRectMake(0, 420, Key_ScreenWith, 50)];
    [button5 setBackgroundColor:Key_DeBugColor];
    [self.view addSubview:button5];
    [button5 addTarget:self action:@selector(showTextWithBottom) forControlEvents:UIControlEventTouchUpInside];
    [button5 setTitle:@"提示信息！（通过bottom定义显示位置）" forState:UIControlStateNormal];
    
    UIButton *button6 = [[UIButton alloc] initWithFrame:CGRectMake(0, 500, Key_ScreenWith, 50)];
    [button6 setBackgroundColor:Key_DeBugColor];
    [self.view addSubview:button6];
    [button6 addTarget:self action:@selector(showTextWithTopAndDuraction) forControlEvents:UIControlEventTouchUpInside];
    [button6 setTitle:@"提示信息！（定义显示位置和停留时间" forState:UIControlStateNormal];
}

- (void)stopActive {
    [Toast hiddenActivity];
}

- (void)showActive {
    [Toast showActivity:@"提示信息！"];
}

- (void)showWithText {
    [Toast showWithText:@"提示信息！不带菊花"];
}

- (void)showTextWithDuration {
    [Toast showWithText:@"提示信息！（定义停留1s）" duration:1.f];
}

- (void)showTextWithTop {
    [Toast showWithText:@"提示信息！（通过top定义显示位置）" topOffset:100];
}

- (void)showTextWithBottom {
    [Toast showWithText:@"提示信息！（通过bottom定义显示位置）" bottomOffset:100];
}

- (void)showTextWithTopAndDuraction {
    [Toast showWithText:@"提示信息！（定义显示位置和停留时间）" topOffset:100 duration:2.f];
    //    Toast showWithText:<#(NSString *)#> topOffset:<#(CGFloat)#> duration:<#(CGFloat)#>  另一种方法
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
