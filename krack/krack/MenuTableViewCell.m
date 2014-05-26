//
//  MenuTableViewCell.m
//  krack
//
//  Created by Adrien Guffens on 26/05/14.
//  Copyright (c) 2014 Team3000. All rights reserved.
//

#import "MenuTableViewCell.h"

@implementation MenuTableViewCell

- (void)awakeFromNib {
	[super awakeFromNib];

	[self configure];
}

- (void)configure {
	self.titleLabel.font = [UIFont titleFont];
	self.subtitleLabel.font = [UIFont smallFont];
	
	self.backgroundColor = [UIColor backgroundCellColor];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setMenu:(NSDictionary *)menu {
	_menu = menu;
	
	if (menu) {
		self.titleLabel.text = menu[@"title"];
		self.subtitleLabel.text = menu[@"subtitle"];
		self.iconImageView.image = [UIImage imageNamed:menu[@"imageName"]];
	}
}

@end
