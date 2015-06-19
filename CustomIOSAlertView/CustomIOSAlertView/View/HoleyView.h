//
//  HoleyView.h
//  CustomIOSAlertView
//
//  Created by Freddie Wang on 2015/6/19.
//  Copyright (c) 2015年 Wimagguc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HoleyView : UIView

- (id)initWithHoleRect:(CGRect)holeRect parentFrame:(CGRect)frame;

@property (nonatomic, assign) CGRect holeFrame;
@property (nonatomic, retain) UIColor* dimColor;

@end
