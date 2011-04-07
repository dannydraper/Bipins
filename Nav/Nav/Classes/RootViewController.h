//
//  RootViewController.h
//  Nav
//
//  Created by Danny Draper on 23/03/2011.
//  Copyright 2011 CedeSoft Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface RootViewController : UITableViewController<UITableViewDelegate, UITableViewDataSource> {
	NSArray *controllers;
}

@property (nonatomic, retain) NSArray *controllers;

@end
