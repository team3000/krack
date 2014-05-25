//
//  LoginViewController.h
//  krack
//
//  Created by Adrien Guffens on 25/05/14.
//  Copyright (c) 2014 Team3000. All rights reserved.
//

#import "BaseViewController.h"
#import <FacebookSDK/FacebookSDK.h>


@interface LoginViewController : BaseViewController <FBLoginViewDelegate>

@property (weak, nonatomic) IBOutlet FBLoginView *facebookLoginView;

@end
