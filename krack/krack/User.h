//
//  User.h
//  krack
//
//  Created by Adrien Guffens on 25/05/14.
//  Copyright (c) 2014 Team3000. All rights reserved.
//

#import "BaseJSONModel.h"
#import "Address.h"

@protocol User
@end

@interface User : BaseJSONModel

@property (strong, nonatomic) NSNumber *id;

@property (strong, nonatomic) NSDate *createdAt;
@property (strong, nonatomic) NSDate *updatedAt;

@property (strong, nonatomic) NSString *authToken;
@property (strong, nonatomic) NSString *deviceToken;

@property (strong, nonatomic) NSNumber *acceptsMessages;
@property (strong, nonatomic) NSNumber *isProfilePublic;
@property (strong, nonatomic) NSString *status;

@property (strong, nonatomic) NSURL *avatarUrl;
@property (strong, nonatomic) NSString *coverUrl;

@property (strong, nonatomic) NSString *company;
@property (strong, nonatomic) NSString *school;
@property (strong, nonatomic) NSString *job;
@property (strong, nonatomic) NSDate *birthDate;

@property (strong, nonatomic) NSNumber *timezone;
@property (strong, nonatomic) NSString *sex;

@property (strong, nonatomic) NSString *firstName;
@property (strong, nonatomic) NSString *lastName;
@property (strong, nonatomic) NSString *fullName;
@property (strong, nonatomic) NSString *smallFullName;
@property (strong, nonatomic) NSString *email;
@property (strong, nonatomic) NSString *phoneNumber;
@property (strong, nonatomic) NSString *personalWebsite;

@property (strong, nonatomic) NSString *locale;

@property (strong, nonatomic) Address *address;
@property (strong, nonatomic) NSString *facebookId;

@end
