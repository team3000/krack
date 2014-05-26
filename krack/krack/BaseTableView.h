//
//  BaseTableView.h
//  krack
//
//  Created by Adrien Guffens on 25/05/14.
//  Copyright (c) 2014 Team3000. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Base.h"

typedef void (^BaseTableViewCompletionHandler)(id object, UITableViewCell **cell);


@interface BaseTableView : UITableView <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray *list;

@property (nonatomic, strong) BaseCompletionHandler didSelectCompletion;

@property (nonatomic, strong) BaseTableViewCompletionHandler cellForRowAtIndexPathCompletion;

- (void)registerNibWithIdentifier:(NSString *)identifier;

@end
