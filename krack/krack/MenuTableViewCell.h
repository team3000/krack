//
//  MenuTableViewCell.h
//  krack
//
//  Created by Adrien Guffens on 26/05/14.
//  Copyright (c) 2014 Team3000. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseImageView.h"
#import "BaseLabel.h"

@interface MenuTableViewCell : UITableViewCell

@property (nonatomic, strong) NSDictionary *menu;

@property (strong, nonatomic) IBOutlet BaseImageView *iconImageView;
@property (strong, nonatomic) IBOutlet BaseLabel *titleLabel;
@property (strong, nonatomic) IBOutlet BaseLabel *subtitleLabel;


@end
