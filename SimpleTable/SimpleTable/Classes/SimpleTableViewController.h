//
//  SimpleTableViewController.h
//  SimpleTable
//
//  Created by Danny Draper on 17/03/2011.
//  Copyright 2011 CedeSoft Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kNameValueTag	1
#define kColorValueTag	2


@interface SimpleTableViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> {
	NSArray *listData;
	NSArray *computers;
}

@property (nonatomic, retain) NSArray *computers;
@property (nonatomic, retain) NSArray *listData;

@end

