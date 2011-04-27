//
//  ProductDetailView.m
//  Bipins
//
//  Created by Danny Draper on 09/04/2011.
//  Copyright 2011 CedeSoft Ltd. All rights reserved.
//

#import "ProductDetailView.h"


@implementation ProductDetailView

@synthesize scrollview;

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

    self.title = @"Product Detail";
	
	//BipinsAppDelegate *delegate = [[UIApplication sharedApplication] delegate];
	
	//delegate.navController.navigationItem.hidesBackButton = YES;
	
	//scrollview.contentSize = CGRectMake(0.0f, 0.0f, 320.0f, 3000.0f);
	
	[scrollview setContentSize:CGSizeMake(320.0f, 1300.0f)];
	
	scrollview.frame = CGRectMake (0.0f, 0.0f, 320.0f, 460.0f);
	
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

- (IBAction) buyButtonpressed:(id)sender
{
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.curryfusion.net/buy.php"]];
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
