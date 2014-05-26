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
	if (_fullName == nil) {
		NSString *firstName = self.firstName == nil ? @"" : self.firstName;
		NSString *lastName = self.lastName == nil ? @"" : self.lastName;
		
		_fullName = [NSString stringWithFormat:@"%@ %@", [firstName capitalizedString], [lastName capitalizedString]];
	}
	return _fullName;
}

- (NSString *)smallFullName {
	if (_smallFullName == nil) {
		NSString *firstName = self.firstName == nil ? @"" : self.firstName;
		NSString *lastName = self.lastName == nil ? @"" : self.lastName;

		if (lastName) {
			_smallFullName = [NSString stringWithFormat:@"%@ %@.", [firstName capitalizedString], [[lastName capitalizedString] substringToIndex:1]];
		}
		else {
			_smallFullName = [NSString stringWithFormat:@"%@", [firstName capitalizedString]];
		}
		
	}
	return _smallFullName;
}

@end
