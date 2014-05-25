//
//  BaseImageView.m
//  krack
//
//  Created by Adrien Guffens on 25/05/14.
//  Copyright (c) 2014 Team3000. All rights reserved.
//

#import "BaseImageView.h"
#import "UIImage+GIF.h"
//#import <UIImageView-PlayGIF/UIImageView+PlayGIF.h>

@implementation BaseImageView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
		self.isRounded = NO;
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
		self.isRounded = NO;
    }
    return self;
}

- (void)setupViewLayers {
    self.layer.masksToBounds = YES;

    self.layer.shouldRasterize = YES;
    self.layer.rasterizationScale = [UIScreen mainScreen].scale;
    self.layer.cornerRadius = roundf(self.frame.size.height / 2.0);
}

- (void)setIsRounded:(BOOL)isRounded {
	if (isRounded == YES)
		[self setupViewLayers];
}

- (void)animateWithFileName:(NSString *)fileName {
    
	NSURL *url = [[NSBundle mainBundle] URLForResource:fileName withExtension:@"gif"];
	UIImage *testImage = [UIImage animatedGIFWithData:[NSData dataWithContentsOfURL:url]];
	self.animationImages = testImage.images;
	self.animationDuration = testImage.duration;
	self.animationRepeatCount = 0;
	self.image = testImage.images.lastObject;
	[self startAnimating];
}

- (void)stopAnimate {
//	[self stopGIF];
	[self stopAnimating];
}

- (BOOL)isAnimating {
//	return [self isGIFPlaying];
	return NO;
}

@end
