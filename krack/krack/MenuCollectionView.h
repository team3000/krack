//
//  MenuCollectionView.h
//  krack
//
//  Created by Adrien Guffens on 26/05/14.
//  Copyright (c) 2014 Team3000. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Base.h"

@interface MenuCollectionView : UICollectionView <UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate>

@property (nonatomic, strong) NSMutableArray *list;
@property (nonatomic, strong) BaseCompletionHandler completion;

@end
