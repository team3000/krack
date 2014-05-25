//
//  UserView.m
//  krack
//
//  Created by Adrien Guffens on 25/05/14.
//  Copyright (c) 2014 Team3000. All rights reserved.
//

#import "UserView.h"
#import <UIImageView+AFNetworking.h>

@implementation UserView


- (id)initWithFrame:(CGRect)frame {
	self = [super initWithFrame:frame];
	if (self) {
		[self configure];
	}
	return self;
}

- (void)awakeFromNib {
	[super awakeFromNib];
	
	[self configure];
}

- (void)configure {
	self.fullNameLabel.font = [UIFont titleFont];
	self.placeLabel.font = [UIFont boldTitleFont];
	
	self.followerCountLabel.font = [UIFont titleFont];
	self.followingCountLabel.font = [UIFont titleFont];

	self.followerLabel.font = [UIFont mediumFont];
	self.followingLabel.font = [UIFont mediumFont];

	[self.coverImageView animateWithFileName:@"flip"];
	
	self.avatarImageView.isRounded = YES;
}


- (void)setUser:(User *)user {
	_user = user;
	if (user) {
		self.fullNameLabel.text = user.fullName;
		self.placeLabel.text = user.address.address;
		[self.avatarImageView setImageWithURL:user.avatarUrl];
	}
}

@end
