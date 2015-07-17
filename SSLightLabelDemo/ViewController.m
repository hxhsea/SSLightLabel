//
//  ViewController.m
//  SSLightLabelDemo
//
//  Created by smallsea on 15/7/16.
//  Copyright (c) 2015年 smallsea. All rights reserved.
//

#import "ViewController.h"
#import "SSLightLabel.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor blackColor];
    
    SSLightLabel *label = [[SSLightLabel alloc] initWithFrame:CGRectMake(0, 200, self.view.frame.size.width, 40)];
    label.text = @"静坐常思己过 闲谈莫论人非";
    label.labelTextColor = [UIColor grayColor];
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];
    
    
    
    
    label.labelLightColor = [UIColor whiteColor];
    
    
    label.animationDuration = 4.;
    
    
    label.isRepeat = YES;
   // label.repeatCount  = 2;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
