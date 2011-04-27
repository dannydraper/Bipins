//
//  CellsViewController.h
//  Cells
//
//  Created by Danny Draper on 11/04/2011.
//  Copyright 2011 CedeSoft Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kNameValueTag	1
#define kColorValueTag	2

@interface CellsViewController : UIViewController<UITableViewDataSource, UITableViewDelegate> {
	
	NSArray *computers;
	
}

@property (nonatomic, retain) NSArray *computers;

@end

