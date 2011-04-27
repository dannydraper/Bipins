//
//  RootView.h
//  Bipins
//
//  Created by Danny Draper on 04/04/2011.
//  Copyright 2011 CedeSoft Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RecipeMenuController.h"
#import "BipinsAppDelegate.h"
#import "ProductDetailView.h"

@interface RootView : UIViewController {
	
	
	//RecipeMenuController *_recipemenuController;
	//ProductDetailView *_productdetailview;
	
	IBOutlet UIButton *btn_viewrecipies;
}



- (IBAction) viewRecipies:(id)sender;
- (IBAction) productDetails:(id)sender;

@property (nonatomic, retain) IBOutlet UIButton *btn_viewrecipies;


@end
