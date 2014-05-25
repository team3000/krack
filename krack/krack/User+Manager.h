//
//  User+Manager.h
//  krack
//
//  Created by Adrien Guffens on 25/05/14.
//  Copyright (c) 2014 Team3000. All rights reserved.
//

#import "User.h"
#import <FacebookSDK/FacebookSDK.h>

@interface User (Manager)

+ (User *)userFromFBUser:(id<FBGraphUser>)fbUser;

@end
