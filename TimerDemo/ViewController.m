//
//  ViewController.m
//  TimerDemo
//
//  Created by apple on 16/9/18.
//  Copyright © 2016年 吕东. All rights reserved.
//

#import "ViewController.h"

#import "TimerViewController.h"


#define mdWidth [UIScreen mainScreen].bounds.size.width
#define mdHeight [UIScreen mainScreen].bounds.size.height
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    self.navigationItem.title=@"A类";
    //
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(mdWidth/2-50, mdHeight/2-50, 100, 100);
    [btn setTitle:@"点击" forState:UIControlStateNormal];
    btn.backgroundColor=[UIColor blueColor];
    [btn  addTarget:self action:@selector(btnClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview: btn];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)btnClicked{
    TimerViewController *time =[[TimerViewController alloc]init];
    
    [self.navigationController pushViewController:time animated:YES];
    
}


@end
