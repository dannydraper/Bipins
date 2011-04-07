//
//  SimpleTableViewController.m
//  SimpleTable
//
//  Created by Danny Draper on 17/03/2011.
//  Copyright 2011 CedeSoft Ltd. All rights reserved.
//

#import "SimpleTableViewController.h"

@implementation SimpleTableViewController
@synthesize listData;
@synthesize computers;

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
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
	NSArray *array = [[NSArray alloc] initWithObjects:@"Sleepy", @"Sneezy",
					  @"Bashful", @"Happy", @"Doc", @"Grumpy", @"Dopey",
					  @"Thorin", @"Dorin", @"Nori", @"Ori", @"Balin",
					  @"Dwalin", @"Fili", @"Kili", @"Oin", @"Gloin",
					  @"Bifur", @"Bofur", @"Bombur", nil];
	
	self.listData = array;
	
	[array release];
    [super viewDidLoad];
}



/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

#pragma mark -
#pragma mark Table View Data Source Methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return [self.listData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	static NSString *SimpleTableIdentifier = @"SimpleTableIdentifier";
	
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:SimpleTableIdentifier];
	
	if (cell == nil) {
		cell = [[[UITableViewCell alloc] initWithFrame:CGRectZero reuseIdentifier:SimpleTableIdentifier] autorelease];
	}
	
	NSUInteger row = [indexPath row];
	cell.text = [listData objectAtIndex:row];
	UIImage *image = [UIImage imageNamed:@"Masala.png"];
	cell.image = image;
	
	return cell;
}

#pragma mark -
#pragma mark Table View Delegate Methods

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
	return 68;
}

@end
