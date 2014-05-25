//
//  LoginViewController.m
//  krack
//
//  Created by Adrien Guffens on 25/05/14.
//  Copyright (c) 2014 Team3000. All rights reserved.
//

#import "LoginViewController.h"
#import "AppSession.h"
#import "User+Manager.h"
#import "UIImage+GIF.h"

@interface LoginViewController ()

@property (nonatomic, strong) id<FBGraphUser> fbUser;

@end

@implementation LoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
	[self configure];
	
	[self.backgroundImageView animateWithFileName:@"flip"];
}

- (void)configure {
	self.facebookLoginView.delegate = self;
	self.facebookLoginView.readPermissions = @[@"public_profile", @"email", @"user_friends", @"user_location"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loginViewFetchedUserInfo:(FBLoginView *)loginView
                            user:(id<FBGraphUser>)user {
	NSLog(@"user: %@", user);
	
	if (self.fbUser != nil)
		return;
	
	
	self.fbUser = user;
	
	[self loginSuccess];
}

- (void)loginSuccess {
	
	
	User *user = [User userFromFBUser:self.fbUser];
	
	[AppSession defaultSession].currentUser = user;
	
	[self performSegueWithIdentifier:@"HomeViewControllerSegue" sender:self];
}

- (void)loginViewShowingLoggedInUser:(FBLoginView *)loginView {
	
}

// Handle possible errors that can occur during login
- (void)loginView:(FBLoginView *)loginView handleError:(NSError *)error {
	NSString *alertMessage, *alertTitle;
	
	// If the user should perform an action outside of you app to recover,
	// the SDK will provide a message for the user, you just need to surface it.
	// This conveniently handles cases like Facebook password change or unverified Facebook accounts.
	if ([FBErrorUtility shouldNotifyUserForError:error]) {
		alertTitle = @"Facebook error";
		alertMessage = [FBErrorUtility userMessageForError:error];
		
		// This code will handle session closures that happen outside of the app
		// You can take a look at our error handling guide to know more about it
		// https://developers.facebook.com/docs/ios/errors
	} else if ([FBErrorUtility errorCategoryForError:error] == FBErrorCategoryAuthenticationReopenSession) {
		alertTitle = @"Session Error";
		alertMessage = @"Your current session is no longer valid. Please log in again.";
		
		// If the user has cancelled a login, we will do nothing.
		// You can also choose to show the user a message if cancelling login will result in
		// the user not being able to complete a task they had initiated in your app
		// (like accessing FB-stored information or posting to Facebook)
	} else if ([FBErrorUtility errorCategoryForError:error] == FBErrorCategoryUserCancelled) {
		NSLog(@"user cancelled login");
		
		// For simplicity, this sample handles other errors with a generic message
		// You can checkout our error handling guide for more detailed information
		// https://developers.facebook.com/docs/ios/errors
	} else {
		alertTitle  = @"Something went wrong";
		alertMessage = @"Please try again later.";
		NSLog(@"Unexpected error:%@", error);
	}
	
	if (alertMessage) {
		[[[UIAlertView alloc] initWithTitle:alertTitle
									message:alertMessage
								   delegate:nil
						  cancelButtonTitle:@"OK"
						  otherButtonTitles:nil] show];
	}
}

@end
