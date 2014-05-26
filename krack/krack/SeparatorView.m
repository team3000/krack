//
//  SeparatorView.m
//  krack
//
//  Created by Adrien Guffens on 26/05/14.
//  Copyright (c) 2014 Team3000. All rights reserved.
//

#import "SeparatorView.h"

@implementation SeparatorView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
		[self configure];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        // Initialization code
		[self configure];
    }
    return self;
}

- (void)configure {
	self.backgroundColor = [UIColor borderColor];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
