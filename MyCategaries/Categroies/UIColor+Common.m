//
//  UIColor+Common.m
//  MyCategaries
//
//  Created by QMP on 2018/7/10.
//  Copyright © 2018年 xiusl. All rights reserved.
//  https://github.com/ibireme/YYKit

#import "UIColor+Common.h"

@implementation UIColor (Common)
static inline NSUInteger sl_hexStrToInt(NSString *str) {
    uint32_t result = 0;
    sscanf([str UTF8String], "%X", &result);
    return result;
}
static BOOL sl_hexStrToRGBA(NSString *str, CGFloat *r, CGFloat *g, CGFloat *b, CGFloat *a) {
    NSCharacterSet *set = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    str = [[str stringByTrimmingCharactersInSet:set] uppercaseString];
    if ([str hasPrefix:@"#"]) {
        str = [str substringFromIndex:1];
    } else if ([str hasPrefix:@"0X"]) {
        str = [str substringFromIndex:2];
    }
    
    NSUInteger length = [str length];
    //         RGB            RGBA          RRGGBB        RRGGBBAA
    if (length != 3 && length != 4 && length != 6 && length != 8) {
        return NO;
    }
    
    //RGB,RGBA,RRGGBB,RRGGBBAA
    if (length < 5) {
        *r = sl_hexStrToInt([str substringWithRange:NSMakeRange(0, 1)]) / 255.0f;
        *g = sl_hexStrToInt([str substringWithRange:NSMakeRange(1, 1)]) / 255.0f;
        *b = sl_hexStrToInt([str substringWithRange:NSMakeRange(2, 1)]) / 255.0f;
        if (length == 4)  *a = sl_hexStrToInt([str substringWithRange:NSMakeRange(3, 1)]) / 255.0f;
        else *a = 1;
    } else {
        *r = sl_hexStrToInt([str substringWithRange:NSMakeRange(0, 2)]) / 255.0f;
        *g = sl_hexStrToInt([str substringWithRange:NSMakeRange(2, 2)]) / 255.0f;
        *b = sl_hexStrToInt([str substringWithRange:NSMakeRange(4, 2)]) / 255.0f;
        if (length == 8) *a = sl_hexStrToInt([str substringWithRange:NSMakeRange(6, 2)]) / 255.0f;
        else *a = 1;
    }
    return YES;
}
+ (instancetype)sl_colorWithHexString:(NSString *)hexStr {
    CGFloat r, g, b, a;
    if (sl_hexStrToRGBA(hexStr, &r, &g, &b, &a)) {
        return [UIColor colorWithRed:r green:g blue:b alpha:a];
    }
    return nil;
}
+ (UIColor *)sl_colorWithR:(NSInteger)r G:(NSInteger)g B:(NSInteger)b {
    return [self sl_colorWithR:r G:g B:b A:1];
}
+ (UIColor *)sl_colorWithR:(NSInteger)r G:(NSInteger)g B:(NSInteger)b A:(CGFloat)a {
    return [self colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a];
}



+ (UIColor *)themeColor {
    return [self sl_colorWithHexString:@"58A6FF"];
}
+ (UIColor *)blackTextColor {
    return [self sl_colorWithHexString:@"1A2C3F"];
}
+ (UIColor *)blueTextColor {
    return [self sl_colorWithHexString:@"58A6FF"];
}
+ (UIColor *)grayBackgroupColor {
    return [self sl_colorWithHexString:@"F5F8FA"];
}
+ (UIColor *)blackMaskColor {
    return [self colorWithRed:0 green:0 blue:0 alpha:0.3];
}
@end
