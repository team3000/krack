//
//  MenuCollectionView.m
//  krack
//
//  Created by Adrien Guffens on 26/05/14.
//  Copyright (c) 2014 Team3000. All rights reserved.
//

#import "MenuCollectionView.h"
#import "MenuCollectionViewCell.h"

static NSString *kDefaultMenuCollectionViewCellIdentifier = @"MenuCollectionViewCell";

@implementation MenuCollectionView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
		[self configure];
    }
    return self;
}

- (void)awakeFromNib {
	UINib *usersCollectionViewCellNib = [UINib nibWithNibName:kDefaultMenuCollectionViewCellIdentifier bundle:nil];
	[self registerNib:usersCollectionViewCellNib forCellWithReuseIdentifier:kDefaultMenuCollectionViewCellIdentifier];
	
	[super awakeFromNib];
	
	[self configure];
}

- (void)configure {
	self.delegate = self;
	self.dataSource = self;
}
- (void)setList:(NSMutableArray *)list {
	_list = list;
	[self reloadData];
}

#pragma mark - UICollectionView Datasource

- (NSInteger)collectionView:(UICollectionView *)view numberOfItemsInSection:(NSInteger)section {
    return [self.list count];
}

- (NSInteger)numberOfSectionsInCollectionView: (UICollectionView *)collectionView {
    return 1;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
	MenuCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kDefaultMenuCollectionViewCellIdentifier forIndexPath:indexPath];
	
	id object = [self.list objectAtIndex:indexPath.row];
	
	cell.item = object;
	
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
	
	if (self.completion) {
		id object = [self.list objectAtIndex:indexPath.row];
		if (self.completion) {
			self.completion(object);
		}
	}
}

@end
