//
//  UIView+Frame.m
//  MyCategaries
//
//  Created by QMP on 2018/7/10.
//  Copyright © 2018年 xiusl. All rights reserved.
//

#import "UIView+Frame.h"

@implementation UIView (Frame)
- (CGFloat)sl_width {
    return self.frame.size.width;
}
- (void)setSl_width:(CGFloat)sl_width {
    CGRect frame = self.frame;
    frame.size.width = sl_width;
    self.frame = frame;
}

- (CGFloat)sl_height {
    return self.frame.size.height;
}
- (void)setSl_height:(CGFloat)sl_height {
    CGRect frame = self.frame;
    frame.size.height = sl_height;
    self.frame = frame;
}

- (CGFloat)sl_left {
    return self.frame.origin.x;
}
- (void)setSl_left:(CGFloat)sl_left {
    CGRect frame = self.frame;
    frame.origin.x = sl_left;
    self.frame = frame;
}
- (CGFloat)sl_top {
    return self.frame.origin.y;
}
- (void)setSl_top:(CGFloat)sl_top {
    CGRect frame = self.frame;
    frame.origin.y = sl_top;
    self.frame = frame;
}
- (CGFloat)sl_right {
    return self.frame.origin.x + self.frame.size.width;
}
- (void)setSl_right:(CGFloat)sl_right {
    CGRect frame = self.frame;
    frame.origin.x = sl_right - self.frame.size.width;
    self.frame = frame;
}

- (CGFloat)sl_bottom {
    return self.frame.origin.y + self.frame.size.height;
}
- (void)setSl_bottom:(CGFloat)sl_bottom {
    CGRect frame = self.frame;
    frame.origin.y = sl_bottom - self.frame.size.height;
    self.frame = frame;
}

- (CGFloat)sl_centerX {
    return self.center.x;
}
- (void)setSl_centerX:(CGFloat)sl_centerX {
    self.center = CGPointMake(sl_centerX, self.center.y);
}

- (CGFloat)sl_centerY {
    return self.center.y;
}
- (void)setSl_centerY:(CGFloat)sl_centerY {
    self.center = CGPointMake(self.center.x, sl_centerY);
}

- (CGPoint)sl_origin {
    return self.frame.origin;
}
- (void)setSl_origin:(CGPoint)sl_origin {
    CGRect frame = self.frame;
    frame.origin = sl_origin;
    self.frame = frame;
}

- (CGSize)sl_size {
    return self.frame.size;
}
- (void)setSl_size:(CGSize)sl_size {
    CGRect frame = self.frame;
    frame.size = sl_size;
    self.frame = frame;
}
@end
