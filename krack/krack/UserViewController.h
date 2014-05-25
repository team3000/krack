//
//  UserViewController.h
//  krack
//
//  Created by Adrien Guffens on 25/05/14.
//  Copyright (c) 2014 Team3000. All rights reserved.
//

#import "BaseViewController.h"
#import "User.h"
#import "UserView.h"

@interface UserViewController : BaseViewController

@property (nonatomic, strong) User *user;
@property (strong, nonatomic) IBOutlet UserView *userView;

@end
