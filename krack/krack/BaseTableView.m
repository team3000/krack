//
//  BaseTableView.m
//  krack
//
//  Created by Adrien Guffens on 25/05/14.
//  Copyright (c) 2014 Team3000. All rights reserved.
//

#import "BaseTableView.h"

@implementation BaseTableView

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
		[self configure];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
	self = [super initWithCoder:aDecoder];
	if (self) {
		[self configure];
	}
	return self;
}

- (void)configure {
	self.delegate = self;
	self.dataSource = self;
}

- (void)setList:(NSMutableArray *)list {
	_list = list;
	
	[self reloadData];
}

- (void)registerNibWithIdentifier:(NSString *)identifier {
	
	UINib *nib = [UINib nibWithNibName:identifier bundle:nil];
	[self registerNib:nib forCellReuseIdentifier:identifier];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

	//INFO: cell configuration
	UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Default"];
	
	if (self.cellForRowAtIndexPathCompletion) {
		id object = [self.list objectAtIndex:indexPath.row];
	
		self.cellForRowAtIndexPathCompletion(object, &cell);
	}

	return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	if (self.didSelectCompletion) {
		
		id object = [self.list objectAtIndex:indexPath.row];
		self.didSelectCompletion(object);
	}
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
	return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return [self.list count];
}

@end
