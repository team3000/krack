//
//  UserView.m
//  krack
//
//  Created by Adrien Guffens on 25/05/14.
//  Copyright (c) 2014 Team3000. All rights reserved.
//

#import "UserView.h"
#import <UIImageView+AFNetworking.h>
#import <UIImage+BlurredFrame.h>

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

	self.followerLabel.font = [UIFont smallFont];
	self.followingLabel.font = [UIFont smallFont];
	//
	self.fullNameLabel.textColor = [UIColor whiteColor];
	self.placeLabel.textColor = [UIColor whiteColor];
	
	self.followerCountLabel.textColor = [UIColor whiteColor];
	self.followingCountLabel.textColor = [UIColor whiteColor];
	
	self.followerLabel.textColor = [UIColor whiteColor];
	self.followingLabel.textColor = [UIColor whiteColor];

	
	

	[self.coverImageView animateWithFileName:@"flip"];
	
	self.avatarImageView.isRounded = YES;
	
	self.blurView.alpha = 0.65;
//	self.backgroundColor = [UIColor blackColor];
	
	self.blurView.blurTintColor = [UIColor blackColor];
	
	self.addButton.tintColor = [UIColor whiteColor];
}


- (void)setUser:(User *)user {
	_user = user;
	if (user) {
		self.fullNameLabel.text = user.smallFullName;
		self.placeLabel.text = user.address.address;
		[self.avatarImageView setImageWithURL:user.avatarUrl];
	}
}

@end
