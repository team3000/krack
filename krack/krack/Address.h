//
//  Address.h
//  krack
//
//  Created by Adrien Guffens on 25/05/14.
//  Copyright (c) 2014 Team3000. All rights reserved.
//

//#import "JSONModel.h"

#import "BaseJSONModel.h"

@protocol Address
@end

@interface Address : BaseJSONModel

@property (nonatomic, strong) NSNumber *id;
@property (nonatomic, strong) NSNumber *latitude;
@property (nonatomic, strong) NSNumber *longitude;

@property (nonatomic, strong) NSString *address;
@property (nonatomic, strong) NSString *addressComplement;
@property (nonatomic, strong) NSString *zipCode;
@property (nonatomic, strong) NSString *contryCode;
@property (nonatomic, strong) NSNumber *addressableId;
@property (nonatomic, strong) NSString *addressableType;

@property (nonatomic, strong) NSDate *createdAt;
@property (nonatomic, strong) NSDate *updatedAt;

@property (nonatomic, strong) NSNumber *cityId;
@property (nonatomic, strong) NSString *city;
@property (nonatomic, strong) NSString *state;
@property (nonatomic, strong) NSString *stateCode;
@property (nonatomic, strong) NSString *country;
@property (nonatomic, strong) NSString *fullText;
@property (nonatomic, strong) NSNumber *countryId;


@end
