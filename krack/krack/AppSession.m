//
//  AppSession.m
//  krack
//
//  Created by Adrien Guffens on 25/05/14.
//  Copyright (c) 2014 Team3000. All rights reserved.
//

#import "AppSession.h"
#import <FacebookSDK/FacebookSDK.h>

@implementation AppSession

+ (AppSession *)defaultSession {
    static AppSession *_sharedClient = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedClient = [[self alloc] init];
    });
    
    return _sharedClient;
}

- (void)closeAndClearSession {
	
	_currentUser = nil;
	
	[FBSession.activeSession closeAndClearTokenInformation];
//	[[AppDelegate appDelegate].apiManager cancelAllOperations];
}

@end
