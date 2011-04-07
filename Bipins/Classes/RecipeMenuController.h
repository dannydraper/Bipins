//
//  RecipeMenuController.h
//  Bipins
//
//  Created by Danny Draper on 06/04/2011.
//  Copyright 2011 CedeSoft Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface RecipeMenuController : UITableViewController {
	NSMutableArray *_list;
}

@property (nonatomic, retain) NSArray *_list;

@end
