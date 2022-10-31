//
//  CALayer+border_color.m
//  calculator
//
//  Created by Lipawsky on 2022-09-23.
//
#import <UIKit/UIKit.h>
#import "CALayer+border_color.h"

@implementation CALayer (border_color)

- (void)setBorderColorWithUIColor:(UIColor *)color
{
    self.borderColor = color.CGColor;
}
@end
