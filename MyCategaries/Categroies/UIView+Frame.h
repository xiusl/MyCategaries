//
//  UIView+Frame.h
//  MyCategaries
//
//  Created by QMP on 2018/7/10.
//  Copyright © 2018年 xiusl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Frame)
@property (nonatomic) CGFloat sl_width;
@property (nonatomic) CGFloat sl_height;

@property (nonatomic) CGFloat sl_left;
@property (nonatomic) CGFloat sl_right;
@property (nonatomic) CGFloat sl_top;
@property (nonatomic) CGFloat sl_bottom;


@property (nonatomic) CGFloat sl_centerX;
@property (nonatomic) CGFloat sl_centerY;

@property (nonatomic) CGPoint sl_origin;
@property (nonatomic) CGSize  sl_size;
@end
