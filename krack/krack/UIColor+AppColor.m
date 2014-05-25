//
//  UIColor+AppColor.m
//  krack
//
//  Created by Adrien Guffens on 25/05/14.
//  Copyright (c) 2014 Team3000. All rights reserved.
//

#import "UIColor+AppColor.h"

@implementation UIColor (AppColor)

+ (UIColor *)color
{
    return [UIColor colorFromHexString:@"#707070"];
}

+ (UIColor *)titleColor
{
    return [UIColor colorFromHexString:@"#3E444B"];
}

+ (UIColor *)fontColor
{
    return [UIColor colorFromHexString:@"#7F8995"];
}

+ (UIColor *)selectedFontColor
{
    return [UIColor colorFromHexString:@"#E0E0E0"];
}

+ (UIColor *)borderColor
{
    return [UIColor colorFromHexString:@"#DFDFDF"];
}

+ (UIColor *)backgroundColor
{
	return [UIColor whiteColor];
}

+ (UIColor *)backgroundCellColor
{
    return [UIColor colorFromHexString:@"#F9F9F9"];
}

+ (UIColor *)selectedBackgroundColor
{
    return [UIColor colorFromHexString:@"#E0E0E0"];
}

+ (UIColor *)navigationBar
{
    return [UIColor colorFromHexString:@"#495762"];
}

+ (UIColor *)subNavigationBar
{
    return [UIColor colorFromHexString:@"#6f7985"];
}

+ (UIColor *)successFontColor
{
	return [UIColor colorFromHexString:@"#2ecc71"];
}

+ (UIColor *)errorFontColor
{
	return [UIColor colorFromHexString:@"#c0392b"];
}

+ (UIColor *)informationFontColor
{
	return [UIColor colorFromHexString:@"#00ACCC"];
}

@end
