//
//  User.m
//  krack
//
//  Created by Adrien Guffens on 25/05/14.
//  Copyright (c) 2014 Team3000. All rights reserved.
//

#import "User.h"

@implementation User

#pragma mark - Customs getters

- (NSString *)fullName {
	NSString *firstName = self.firstName == nil ? @"" : self.firstName;
	NSString *lastName = self.lastName == nil ? @"" : self.lastName;
	
	return [NSString stringWithFormat:@"%@ %@", [firstName capitalizedString], [lastName capitalizedString]];
}

@end
