//
//  ViewController.m
//  MyCategaries
//
//  Created by QMP on 2018/7/10.
//  Copyright © 2018年 xiusl. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSArray *arr = @[@(0),@(9),@(10),@(99),@(100),@(999),@(1000),
                     @(1340),@(10000),@(99999),@(100000),@(999999),@(1000000)];
    
    for (NSNumber *num in arr) {
        NSLog(@"%zd: %@", [num integerValue], [self fixCountShow:[num integerValue]]);
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSString *)fixCountShow:(NSInteger)count {
    if (count <= 0) {
        return @"0";
    } else if (count < 1000) {
        return [NSString stringWithFormat:@"%zd", count];
    } else if (count < 10000) {
        
        return [NSString stringWithFormat:@"%.1fk", count / 1000.0];//[self notRounding:(count / 1000.0000) afterPoint:1]];
    } else if (count < 100000) {
        
        return [NSString stringWithFormat:@"%zdk", count / 1000];
    } else {
        return @"99k+";
    }
}
- (NSString*)notRounding:(CGFloat)price afterPoint:(NSInteger)position {
    
    NSDecimalNumberHandler *roundingBehavior = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundDown scale:position raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:NO];
    
//        NSDecimalNumberHandler *roundingBehavior = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundDown scale:position raiseOnExactness:<#(BOOL)#> raiseOnOverflow:<#(BOOL)#> raiseOnUnderflow:<#(BOOL)#> raiseOnDivideByZero:<#(BOOL)#>
    
    NSDecimalNumber*ouncesDecimal;
    
    NSDecimalNumber*roundedOunces;
    
    ouncesDecimal = [[NSDecimalNumber alloc]initWithString:[NSString stringWithFormat:@"%@",@(price)]];
    
    roundedOunces = [ouncesDecimal decimalNumberByRoundingAccordingToBehavior:roundingBehavior];
    
    return[NSString stringWithFormat:@"%@",roundedOunces];
    
}
@end
