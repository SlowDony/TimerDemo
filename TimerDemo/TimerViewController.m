//
//  TimerViewController.m
//  TimerDemo
//
//  Created by apple on 16/9/18.
//  Copyright © 2016年 吕东. All rights reserved.
//

#import "TimerViewController.h"

#import "TimerBtn.h"

#define mdWidth [UIScreen mainScreen].bounds.size.width
#define mdHeight [UIScreen mainScreen].bounds.size.height

@interface TimerViewController ()

@end

@implementation TimerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor =[UIColor whiteColor];
    self.navigationItem.title=@"B类";
    [self setUIbutton];
    // Do any additional setup after loading the view.
}

-(void)setUIbutton{
    TimerBtn *timeBtn =[[TimerBtn alloc]initWithFrame:CGRectMake(mdWidth/2-50, mdHeight/2-50, 100, 100)];
    [self.view addSubview:timeBtn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
