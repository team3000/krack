//
//  User+Manager.m
//  krack
//
//  Created by Adrien Guffens on 25/05/14.
//  Copyright (c) 2014 Team3000. All rights reserved.
//

#import "User+Manager.h"

@implementation User (Manager)

+ (User *)userFromFBUser:(id<FBGraphUser>)fbUser {
	
	if (fbUser == nil)
		return nil;
	
	User *user = [[User alloc] init];
	
	user.email = fbUser[@"email"];
	user.firstName = fbUser[@"first_name"];
	user.lastName = fbUser[@"last_name"];
	user.sex = fbUser[@"gender"];
	user.facebookId = fbUser[@"id"];
	user.locale = fbUser[@"locale"];
	
	NSString *urlString = [NSString stringWithFormat:@"https://graph.facebook.com/%@/picture?height=200&type=normal&width=200", user.facebookId];
	user.avatarUrl = [NSURL URLWithString:urlString];
	
	user.address = [Address new];
	user.address.address = fbUser[@"location"][@"name"];

	
	return user;
}

@end
