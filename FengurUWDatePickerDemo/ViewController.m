//
//  ViewController.m
//  FengurUWDatePickerDemo
//
//  Created by 王智超 on 15/11/4.
//  Copyright © 2015年 UWFengur. All rights reserved.
//

#import "ViewController.h"
#import "UWDatePickerView.h"
@interface ViewController ()<UWDatePickerViewDelegate>
{
    UWDatePickerView *_pickerView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    UIButton *btn = [[UIButton alloc]init];
    btn.backgroundColor = [UIColor cyanColor];
    btn.frame = CGRectMake([UIScreen mainScreen].bounds.size.width/2-25, 50, 50, 50);
    btn.layer.cornerRadius = 25;
    btn.layer.masksToBounds = YES;
    [self.view addSubview:btn];
    [btn setTitle:@"Time" forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont boldSystemFontOfSize:14.f];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(timePick) forControlEvents:UIControlEventTouchUpInside];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)timePick
{
    [self setupDateView:DateTypeOfStart];
}

- (void)setupDateView:(DateType)type {
    
    _pickerView = [UWDatePickerView instanceDatePickerView];
    _pickerView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
    [_pickerView setBackgroundColor:[UIColor greenColor]];
    _pickerView.delegate = self;
    _pickerView.type = type;
    [self.view addSubview:_pickerView];
    
}

- (void)getSelectDate:(NSString *)date type:(DateType)type {

    NSLog(@"时间 : %@",date);
    switch (type) {
        case DateTypeOfStart:
            // TODO 日期确定选择
            break;
            
        case DateTypeOfEnd:
            // TODO 日期取消选择
            break;
        default:
            break;
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
