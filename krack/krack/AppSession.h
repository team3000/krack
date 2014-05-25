//
//  AppSession.h
//  krack
//
//  Created by Adrien Guffens on 25/05/14.
//  Copyright (c) 2014 Team3000. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

@interface AppSession : NSObject {
	User *_currentUser;
}

+ (AppSession *)defaultSession;
- (void)closeAndClearSession;

@property (nonatomic, strong) User *currentUser;

@end
