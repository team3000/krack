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

+ (UIFont*)font
{
	return [UIFont fontWithName:@"HelveticaNeue" size:15.0];
}

+ (UIFont*)mediumFont
{
	return [UIFont fontWithName:@"HelveticaNeue" size:17.0];
}

+ (UIFont*)selectedFont
{
	return [UIFont fontWithName:@"HelveticaNeue" size:15];
}

+ (UIFont*)smallFont
{
	return [UIFont fontWithName:@"HelveticaNeue-Light" size:8];
}

+ (UIFont*)titleFont
{
	return [UIFont fontWithName:@"HelveticaNeue-Light" size:20.0];
}

+ (UIFont*)boldTitleFont
{
	return [UIFont fontWithName:@"HelveticaNeue" size:20.0];
}

+ (UIFont*)mediumTitleFont
{
	return [UIFont fontWithName:@"HelveticaNeue" size:30.0];
}

+ (UIFont*)bigTitleFont
{
	return [UIFont fontWithName:@"HelveticaNeue" size:40.0];
}

+ (UIFont*)subtitleFont
{
	return [UIFont fontWithName:@"HelveticaNeue" size:13];
}

+ (UIFont*)boldFont
{
	return [UIFont fontWithName:@"Helvetica-Bold" size:17];
}

+ (UIFont*)buttonFont
{
	return [UIFont fontWithName:@"HelveticaNeue" size:15.0];
}

@end
