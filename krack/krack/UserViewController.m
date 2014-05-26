//
//  UserViewController.m
//  krack
//
//  Created by Adrien Guffens on 25/05/14.
//  Copyright (c) 2014 Team3000. All rights reserved.
//

#import "UserViewController.h"
#import "AppSession.h"

#import "MenuTableViewCell.h"

@interface UserViewController ()

@end

@implementation UserViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.

	[self configure];
	[self bind];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)configure {
	[self.tableView registerNibWithIdentifier:@"MenuTableViewCell"];
	self.tableView.rowHeight = 60.0;

	__weak __typeof(self)weakSelf = self;
	
	self.tableView.didSelectCompletion = ^(id object) {
		DLog(@"object: %@", object);
		
		[weakSelf.tableView deselectRowAtIndexPath:[weakSelf.tableView indexPathForSelectedRow] animated:NO];
	};
	
	self.tableView.cellForRowAtIndexPathCompletion = ^(id object, UITableViewCell **cell) {
		DLog(@"object: %@", object);
		
		*cell = [weakSelf.tableView dequeueReusableCellWithIdentifier:@"MenuTableViewCell"];
		MenuTableViewCell *menuCell = (MenuTableViewCell *)*cell;
		
		menuCell.menu = object;
	};
	
	self.menuCollectionView.completion = ^(id object) {
		DLog(@"object: %@", object);
	};
}

- (void)bind {
	if (self.user == nil) {
		self.user = [AppSession defaultSession].currentUser;
	}
	
	self.userView.user = self.user;
	
	self.tableView.list = [[NSMutableArray alloc] initWithArray:@[@{@"imageName": @"Kracklogo-300x296.png", @"title":@"Top 5 triks", @"subtitle":@"How good I'm"}, @{@"imageName": @"Kracklogo-300x296.png", @"title":@"Last session", @"subtitle":@"where and what I did last time"}, @{@"imageName": @"Kracklogo-300x296.png", @"title":@"All time stats", @"subtitle":@"statistics never lies"}, @{@"imageName": @"Kracklogo-300x296.png", @"title":@"Spots near me", @"subtitle":@"find a post"}]];
	
	self.menuCollectionView.list = [[NSMutableArray alloc] initWithArray:@[@{@"imageName": @"Kracklogo-300x296.png", @"title":@"Total session", @"value":@"086"}, @{@"imageName": @"Kracklogo-300x296.png", @"title":@"Tricks landed", @"value":@"0457"}, @{@"imageName": @"Kracklogo-300x296.png", @"title":@"Different tricks", @"value":@"034"}, @{@"imageName": @"Kracklogo-300x296.png", @"title":@"Achivements", @"value":@"062"}]];
}

@end
