    //
//  RootViewController.m
//  Nav
//
//  Created by Danny Draper on 23/03/2011.
//  Copyright 2011 CedeSoft Ltd. All rights reserved.
//

#import "RootViewController.h"
#import "SecondLevelViewController.h"
#import "NavAppDelegate.h"
#import "DisclosureButtonController.h"

@implementation RootViewController
@synthesize controllers;

// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}


/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	self.title = @"Danhead Root Level";
	NSMutableArray *array = [[NSMutableArray alloc] init];
	
	// Disclosure Button
	DisclosureButtonController *disclosureButtonController = [[DisclosureButtonController alloc] initWithStyle:UITableViewStylePlain];
	
	disclosureButtonController.title = @"Disclosure Buttons";
	disclosureButtonController.rowImage = [UIImage imageNamed:@"disclosureButtonControllerIcon.png"];
	
	
	DisclosureButtonController *disclosureButtonController2 = [[DisclosureButtonController alloc] initWithStyle:UITableViewStylePlain];
	
	disclosureButtonController2.title = @"More Buttons";
	disclosureButtonController2.rowImage = [UIImage imageNamed:@"disclosureButtonControllerIcon.png"];
	
	[array addObject:disclosureButtonController];
	[array addObject:disclosureButtonController2];
	
	[disclosureButtonController release];
	[disclosureButtonController2 release];
	
	self.controllers = array;
	[array release];
	
    [super viewDidLoad];
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

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
	[controllers release];
    [super dealloc];
}

#pragma mark -
#pragma mark Table Data Source Methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	
	return [self.controllers count];
	
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

	static NSString *RootViewControllerCell = @"RootViewControllerCell";
	
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:RootViewControllerCell];
	
	if (cell == nil) {
		cell = [[[UITableViewCell alloc] initWithFrame:CGRectZero reuseIdentifier:RootViewControllerCell] autorelease];
	
	}
	
	// Configure the cell
	NSUInteger row = [indexPath row];
	SecondLevelViewController *controller = [controllers objectAtIndex:row];
	
	cell.text = controller.title;
	cell.image = controller.rowImage;
	return cell;
}

#pragma mark -
#pragma mark Table View Delegate Methods

- (UITableViewCellAccessoryType)tableView:(UITableView *)tableView accessoryTypeForRowWithIndexPath:(NSIndexPath *)indexPath
{
	return UITableViewCellAccessoryDisclosureIndicator;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

	NSUInteger row = [indexPath row];
	SecondLevelViewController *nextController = [self.controllers objectAtIndex:row];
	
	NavAppDelegate *delegate = [[UIApplication sharedApplication] delegate];
	[delegate.navController pushViewController:nextController animated:YES];

}


@end
