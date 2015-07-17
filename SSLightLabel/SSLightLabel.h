//
//  SSLightLabel.h
//  SSLightLabelDemo
//
//  Created by smallsea on 15/7/16.
//  Copyright (c) 2015年 smallsea. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SSLightLabel : UILabel

- (instancetype) initWithFrame:(CGRect)frame;

@property (nonatomic,strong) UIColor *labelTextColor;
@property (nonatomic,strong) UIColor *labelLightColor;
@property (nonatomic,assign) BOOL isRepeat;
@property (nonatomic,assign) NSInteger repeatCount;
@property (nonatomic,assign)    CFTimeInterval  animationDuration;



@end
