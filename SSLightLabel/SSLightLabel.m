//
//  SSLightLabel.m
//  SSLightLabelDemo
//
//  Created by smallsea on 15/7/16.
//  Copyright (c) 2015年 smallsea. All rights reserved.
//

#import "SSLightLabel.h"



@interface SSLightLabel()
{
    CAGradientLayer  *_GradientLater;
    CABasicAnimation *_animation;
}
@end

@implementation SSLightLabel
@synthesize isRepeat=_isRepeat;
@synthesize repeatCount = _repeatCount;
@synthesize labelTextColor = _labelTextColor;
@synthesize labelLightColor = _labelLightColor;
@synthesize animationDuration = _animationDuration;



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        _GradientLater = [CAGradientLayer layer];
        _GradientLater.frame = self.frame;
        _labelTextColor = [UIColor grayColor];
        _labelLightColor = [UIColor whiteColor];
        _GradientLater.colors = @[(id)_labelTextColor.CGColor,(id)_labelLightColor.CGColor,(id)_labelTextColor.CGColor];
        _animationDuration = 4.;
        _isRepeat = YES;
        _repeatCount = MAXFLOAT;
        
        
    }
    return self;
}



-(void)setLabelTextColor:(UIColor *)labelTextColor
{
    _labelTextColor = labelTextColor;
    [self changeColor];
    
}

-(void)setLabelLightColor:(UIColor *)labelLightColor
{
    _labelLightColor = labelLightColor;
    [self changeColor];
    
}

-(void) changeColor
{
    _GradientLater.colors = @[(id)_labelTextColor.CGColor,(id)_labelLightColor.CGColor,(id)_labelTextColor.CGColor];
}


-(void)setIsRepeat:(BOOL)isRepeat
{
    _isRepeat = isRepeat;
    [self addAnimation];
    
    
}

-(void)setRepeatCount:(NSInteger)repeatCount
{
    _repeatCount = repeatCount;
    [self addAnimation];
}

-(void)setAnimationDuration:(CFTimeInterval)animationDuration
{
    _animationDuration = animationDuration;
    [self addAnimation];
}

-(void)willMoveToSuperview:(UIView *)newSuperview
{

    [newSuperview.layer addSublayer:_GradientLater];
  
    _GradientLater.locations = @[@(0.0),@(0.05),@(0.1)];
    _GradientLater.startPoint = CGPointMake(-0.1, 0);
    _GradientLater.endPoint = CGPointMake(1, 0);
    [self addAnimation];
}

-(void)didMoveToSuperview
{
    
    _GradientLater.mask = self.layer;
    self.frame = _GradientLater.bounds;

}


-(void)addAnimation
{
    _animation = [CABasicAnimation animationWithKeyPath:@"locations"];
    _animation.toValue = @[@(1.9),@(1.95),@(2.0)];
    [_animation setDuration:_animationDuration];
    if (_isRepeat) {
        [_animation setRepeatCount:_repeatCount];
    }else
    {
        [_animation setRepeatCount:1];
    }
    [_animation setFillMode:kCAFillModeForwards];
    [_animation setDelegate:self];
    [_GradientLater addAnimation:_animation forKey:@"animateGradient"];
    
}


@end
