//
//  TimerBtn.m
//  TimerDemo
//
//  Created by apple on 16/9/18.
//  Copyright © 2016年 吕东. All rights reserved.
//

#import "TimerBtn.h"


/**
 *  计时器时间
 */

#define Time 15

//对时间的变化进行存储
#define SetUserDefauts [[NSUserDefaults standardUserDefaults] setInteger:self.changeTimes forKey:@"changeTimes"]
//取出正在变化的时间
#define GetUserDefaults [[NSUserDefaults standardUserDefaults] integerForKey:@"changeTimes"]
@interface TimerBtn ()



//定时器

@property (weak,nonatomic)NSTimer *timer;

//计时器变化时间
@property (assign ,nonatomic)NSInteger changeTimes;



@end
@implementation TimerBtn

-(instancetype)initWithFrame:(CGRect)frame{
    self =[super initWithFrame:frame];
    if(self){
        self.backgroundColor=[UIColor redColor];
        
        //圆角
        self.layer.cornerRadius =frame.size.width/2;
        
        

       
        //设置按钮点击方法
        [self addTarget:self action:@selector(changeClicked) forControlEvents:UIControlEventTouchUpInside];
        
        //判断时间是否为0或为空
        if (GetUserDefaults ==(NSInteger)0 ||GetUserDefaults ==(NSInteger)nil){
            //如果时间为空的话,初始化倒计时的时间
            self.changeTimes =Time;
            //设置按钮文字
            [self setTitle:@"点击计时" forState:UIControlStateNormal];
            
        }else {
            //将倒计时的时间设置存起来
            self.changeTimes =GetUserDefaults;
          [self setTitle:[NSString stringWithFormat:@"%ld",self.changeTimes] forState:UIControlStateNormal];
            [self changeClicked];
            
            
            [self setEnabled:NO];
        }
        
    }
    return  self;
}

-(void)changeClicked{
    
    self.timer =[NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timerClicked) userInfo:nil repeats:YES];
}
-(void)timerClicked{
    self.changeTimes--;
    SetUserDefauts;
    //判断时间是否结束
    if (self.changeTimes>=0) {
        //将时间显示在按钮标题上
        [self setTitle:[NSString stringWithFormat:@"%ld",GetUserDefaults] forState:UIControlStateNormal];
        

    }else {
        //停止计时
        [self.timer invalidate];
        
        //将计时器置为0
        self.timer =nil;
        
        //将变化时间记为nil
        self.changeTimes =(NSInteger)nil;
        
        SetUserDefauts;
        
        [self setEnabled:YES];
        //重置时间
        
        self.changeTimes =Time;
        
        [self setTitle:@"点击" forState:UIControlStateNormal];
        
    }
}


@end
