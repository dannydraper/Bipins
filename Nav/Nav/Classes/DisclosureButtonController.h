//
//  DisclosureButtonController.h
//  Nav
//
//  Created by Danny Draper on 30/03/2011.
//  Copyright 2011 CedeSoft Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondLevelViewController.h"
@class DisclosureDetailController;

@interface DisclosureButtonController : SecondLevelViewController<UITableViewDelegate, UITableViewDataSource> {
	NSArray *list;
	DisclosureDetailController *childController;
}

@property (nonatomic, retain) NSArray *list;

@end
