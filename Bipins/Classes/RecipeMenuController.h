//
//  RecipeMenuController.h
//  Bipins
//
//  Created by Danny Draper on 06/04/2011.
//  Copyright 2011 CedeSoft Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomRecipeCell.h"
#import "RecipeDetailController.h"
#import "BipinsAppDelegate.h"
#import "SingleRecipe.h"
#import <Foundation/NSXMLParser.h>

@interface RecipeMenuController : UITableViewController <NSXMLParserDelegate> {
	
	NSMutableArray *_list;
	
	NSMutableArray *_recipelist;
	
	NSXMLParser *_xmlparser;
	
	NSMutableString *_currentelement;
	bool _currentelementallocated;
	
	SingleRecipe *_currentrecipe;
	
}

@property (nonatomic, retain) NSArray *_list;


- (void) parseXML:(NSString *)xmldata;
- (void) rowSelected:(NSIndexPath *)indexPath;

@end
