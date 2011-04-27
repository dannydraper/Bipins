//
//  RootView.m
//  Bipins
//
//  Created by Danny Draper on 04/04/2011.
//  Copyright 2011 CedeSoft Ltd. All rights reserved.
//

#import "RootView.h"


@implementation RootView

@synthesize btn_viewrecipies;


// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {

	self.title = @"Bipin's";
	
	// Disclosure Button
	//_recipemenuController = [[RecipeMenuController alloc] initWithStyle:UITableViewStylePlain];
    //_productdetailview = [[ProductDetailView alloc] initWithNibName:@"ProductDetailView" bundle:nil];
	

	
	[super viewDidLoad];
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (IBAction) viewRecipies:(id)sender
{
	RecipeMenuController *menucontroller = [[RecipeMenuController alloc] initWithStyle:UITableViewStylePlain];
	
	BipinsAppDelegate *delegate = [[UIApplication sharedApplication] delegate];
	[delegate.navController pushViewController:menucontroller animated:YES];
}

- (IBAction) productDetails:(id)sender
{
	
	
	BipinsAppDelegate *delegate = [[UIApplication sharedApplication] delegate];
	
	
	
	ProductDetailView *detailview = [[ProductDetailView alloc] initWithNibName:@"ProductDetailView" bundle:nil];
	[delegate.navController pushViewController:detailview animated:YES];
	//[delegate.navController popViewControllerAnimated:YES];
	//	[delegate.navController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
