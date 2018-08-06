//
//  NSObject+Add.m
//  MyCategaries
//
//  Created by QMP on 2018/8/6.
//  Copyright © 2018年 xiusl. All rights reserved.
//

#import "NSObject+Add.h"

@implementation NSObject (Add)
- (BOOL)isEmptyObject {
    if (!self) {
        return YES;
    }
    if ([self isEqual:[NSNull null]]) {
        return YES;
    }
    if ([self isKindOfClass:[NSString class]]) {
        return [(NSString *)self length] == 0;
    }
    if ([self isKindOfClass:[NSDictionary class]]) {
        return [(NSDictionary *)self count] == 0;
    }
    if ([self isKindOfClass:[NSArray class]]) {
        return [(NSArray *)self count] == 0;
    }
    return NO;
}
@end
