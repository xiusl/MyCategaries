//
//  UIColor+Common.h
//  MyCategaries
//
//  Created by QMP on 2018/7/10.
//  Copyright © 2018年 xiusl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Common)
+ (UIColor *)sl_colorWithHexString:(NSString *)hexStr;
+ (UIColor *)sl_colorWithR:(NSInteger)r G:(NSInteger)g B:(NSInteger)b;
+ (UIColor *)sl_colorWithR:(NSInteger)r G:(NSInteger)g B:(NSInteger)b A:(CGFloat)a;

/** For Project **/
+ (UIColor *)themeColor;
+ (UIColor *)blackTextColor;
+ (UIColor *)blueTextColor;
+ (UIColor *)grayBackgroupColor;
+ (UIColor *)blackMaskColor;
// .....

@end
