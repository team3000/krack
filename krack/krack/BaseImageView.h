//
//  BaseImageView.h
//  krack
//
//  Created by Adrien Guffens on 25/05/14.
//  Copyright (c) 2014 Team3000. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseImageView : UIImageView

- (void)animateWithFileName:(NSString *)fileName;
- (void)stopAnimate;
- (BOOL)isAnimating;

@property (nonatomic, assign) BOOL isRounded;


@end
