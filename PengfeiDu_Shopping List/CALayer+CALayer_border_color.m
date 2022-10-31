//
//  CALayer+CALayer_border_color.m
//  PengfeiDu_Shopping List
//
//  Created by Lipawsky on 2022-10-30.
//

#import <UIKit/UIKit.h>
#import "CALayer+border_color.h"

@implementation CALayer (border_color)

- (void)setBorderColorWithUIColor:(UIColor *)color
{
    self.borderColor = color.CGColor;
}
@end

