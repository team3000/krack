//
//  MenuCollectionViewCell.m
//  krack
//
//  Created by Adrien Guffens on 26/05/14.
//  Copyright (c) 2014 Team3000. All rights reserved.
//

#import "MenuCollectionViewCell.h"

@implementation MenuCollectionViewCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
		[self configure];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        // Initialization code
		[self configure];
    }
    return self;
	
}

- (void)configure {
	self.titleLabel.font = [UIFont smallFont];
	self.valueLabel.font = [UIFont titleFont];
}

- (void)setItem:(NSDictionary *)item {
	_item = item;
	if (item) {
		self.iconImageView.image = [UIImage imageNamed:item[@"imageName"]];
		self.titleLabel.text = item[@"title"];
		self.valueLabel.text = item[@"value"];
	}
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
