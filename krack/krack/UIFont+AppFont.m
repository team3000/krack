//
//  UIFont+AppFont.m
//  krack
//
//  Created by Adrien Guffens on 25/05/14.
//  Copyright (c) 2014 Team3000. All rights reserved.
//

#import "UIFont+AppFont.h"
#import <CoreText/CoreText.h>

@implementation UIFont (AppFont)

+ (UIFont*)defaultFont
{
	return [UIFont fontWithName:@"HelveticaNeue" size:15.0];
}

+ (UIFont*)defaultMediumFont
{
	return [UIFont fontWithName:@"HelveticaNeue" size:17.0];
}

+ (UIFont*)defaultSelectedFont
{
	return [UIFont fontWithName:@"HelveticaNeue" size:15];
}

+ (UIFont*)defaultSmallFont
{
	return [UIFont fontWithName:@"HelveticaNeue" size:11];
}

+ (UIFont*)defaultTitleFont
{
	return [UIFont fontWithName:@"HelveticaNeue" size:20.0];
}

+ (UIFont*)defaultMediumTitleFont
{
	return [UIFont fontWithName:@"HelveticaNeue" size:30.0];
}

+ (UIFont*)defaultBigTitleFont
{
	return [UIFont fontWithName:@"HelveticaNeue" size:40.0];
}

+ (UIFont*)defaultSubtitleFont
{
	return [UIFont fontWithName:@"HelveticaNeue" size:13];
}

+ (UIFont*)defaultBoldFont
{
	return [UIFont fontWithName:@"Helvetica-Bold" size:17];
}

+ (UIFont*)buttonFont
{
	return [UIFont fontWithName:@"HelveticaNeue" size:15.0];
}

@end
