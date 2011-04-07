    //
//  DisclosureButtonController.m
//  Nav
//
//  Created by Danny Draper on 30/03/2011.
//  Copyright 2011 CedeSoft Ltd. All rights reserved.
//

#import "DisclosureButtonController.h"
#import "NavAppDelegate.h"
#import "DisclosureDetailController.h"


@implementation DisclosureButtonController
@synthesize list;

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

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	
	NSArray *array = [[NSArray alloc] initWithObjects:@"Toy Story",
													  @"A Bug's Life",
													  @"Toy Story 2",
													  @"Monsters, Inc.",
													  @"Finding Nemo",
													  @"The Incredibles",
													  @"Cars",
													  @"Ratatouille",
													  @"WALL-E",
					  @"Up", nil];
	
	self.list = array;
	
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

#pragma mark -
#pragma mark Table Data Source Methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return [list count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	
	static NSString *DisclosureButtonCellIdentifier = @"DisclosureButtonCellIdentifier";
	
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:DisclosureButtonCellIdentifier];
	
	if (cell == nil) {
		cell = [[[UITableViewCell alloc] initWithFrame:CGRectZero reuseIdentifier:DisclosureButtonCellIdentifier] autorelease];
	}
	
	NSUInteger row = [indexPath row];
	NSString *rowString = [list objectAtIndex:row];
	
	cell.text = rowString;
	[rowString release];
	
	return cell;
}

#pragma mark -
#pragma mark Table Delegate Methods

- (UITableViewCellAccessoryType)tableView:(UITableView *)tableView accessoryTypeForRowWithIndexPath:(NSIndexPath *)indexPath
{
	return UITableViewCellAccessoryDetailDisclosureButton;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Hey, do you see the disclosure button?" message:@"If you're trying to drill down touch that instead" delegate:nil cancelButtonTitle:@"Won't happen again" otherButtonTitles:nil];
	
	[alert show];
	[alert release];

}

- (void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath
{
	if (childController == nil) {
		childController = [[DisclosureDetailController alloc] initWithNibName:@"DisclosureDetail" bundle:nil];
	}
	
	childController.title = @"Disclosure Button Pressed";
	NSUInteger row = [indexPath row];
	
	NSString *selectedMovie = [list objectAtIndex:row];
	NSString *detailMessage = [[NSString alloc] initWithFormat:@"You pressed the disclosure button for %@", selectedMovie];
	
	childController.message = detailMessage;
	childController.title = selectedMovie;
	
	[detailMessage release];
	
	NavAppDelegate *delegate = [[UIApplication sharedApplication] delegate];
	[delegate.navController pushViewController:childController animated:YES];
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[list release];
	[childController release];
    [super dealloc];
}


@end
