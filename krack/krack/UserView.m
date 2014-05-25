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

- (void)setUser:(User *)user {
	_user = user;
	if (user) {
		self.fullNameLabel.text = user.fullName;
		self.placeLabel.text = user.address.address;
		[self.avatarImageView setImageWithURL:user.avatarUrl];
	}
}

@end
