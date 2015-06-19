//
//  HoleyView.m
//  CustomIOSAlertView
//
//  Created by Freddie Wang on 2015/6/19.
//  Copyright (c) 2015年 Wimagguc. All rights reserved.
//

#import "HoleyView.h"

@implementation HoleyView

@synthesize holeFrame;
@synthesize dimColor;

-(id)initWithHoleRect:(CGRect)holeRect parentFrame:(CGRect)frame {
    self = [self initWithFrame:frame];
    if (self) {
        self.holeFrame = holeRect;
        self.backgroundColor = [UIColor clearColor];
        self.dimColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.4];
        self.clipsToBounds = YES;
    }
    
    return self;
}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    return NO;
}

-(void)drawRect:(CGRect)rect {
    
    [self.dimColor setFill];
    UIRectFill(rect);
    
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect: self.holeFrame cornerRadius: 7];
    [path addClip];
    [[UIColor clearColor] setFill];
    UIRectFill(self.holeFrame);
}

@end
