//
//  UserView.h
//  krack
//
//  Created by Adrien Guffens on 25/05/14.
//  Copyright (c) 2014 Team3000. All rights reserved.
//

#import "BaseView.h"
#import "BaseLabel.h"
#import "BaseImageView.h"

#import "User.h"


@interface UserView : BaseView

@property (nonatomic, strong) IBOutlet BaseImageView *avatarImageView;
@property (nonatomic, strong) IBOutlet BaseLabel *fullNameLabel;
@property (nonatomic, strong) IBOutlet BaseLabel *placeLabel;

@property (nonatomic, strong) User *user;

@end
