//
//  MenuCollectionViewCell.h
//  krack
//
//  Created by Adrien Guffens on 26/05/14.
//  Copyright (c) 2014 Team3000. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseImageView.h"
#import "BaseLabel.h"

@interface MenuCollectionViewCell : UICollectionViewCell

@property (strong, nonatomic) IBOutlet BaseImageView *iconImageView;
@property (nonatomic, strong) NSDictionary *item;
@property (strong, nonatomic) IBOutlet BaseLabel *valueLabel;
@property (strong, nonatomic) IBOutlet BaseLabel *titleLabel;

@end
