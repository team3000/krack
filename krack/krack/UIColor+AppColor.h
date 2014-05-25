//
//  UIColor+AppColor.h
//  krack
//
//  Created by Adrien Guffens on 25/05/14.
//  Copyright (c) 2014 Team3000. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <UIColor+Colours.h>

@interface UIColor (AppColor)

+ (UIColor *)color;
+ (UIColor *)titleColor;
+ (UIColor *)fontColor;
+ (UIColor *)selectedFontColor;
+ (UIColor *)borderColor;

+ (UIColor *)backgroundColor;
+ (UIColor *)backgroundCellColor;
+ (UIColor *)selectedBackgroundColor;

+ (UIColor *)navigationBar;
+ (UIColor *)subNavigationBar;

+ (UIColor *)successFontColor;
+ (UIColor *)errorFontColor;
+ (UIColor *)informationFontColor;

@end
