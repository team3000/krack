//
//  UIFont+AppFont.h
//  krack
//
//  Created by Adrien Guffens on 25/05/14.
//  Copyright (c) 2014 Team3000. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIFont (AppFont)

+ (UIFont*)defaultFont;
+ (UIFont*)defaultMediumFont;
+ (UIFont*)defaultSelectedFont;
+ (UIFont*)defaultSmallFont;
+ (UIFont*)defaultTitleFont;
+ (UIFont*)defaultMediumTitleFont;
+ (UIFont*)defaultBigTitleFont;
+ (UIFont*)defaultSubtitleFont;
+ (UIFont*)defaultBoldFont;
+ (UIFont*)buttonFont;

@end
