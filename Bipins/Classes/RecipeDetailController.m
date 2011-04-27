//
//  RecipeDetailController.m
//  Bipins
//
//  Created by Danny Draper on 21/04/2011.
//  Copyright 2011 CedeSoft Ltd. All rights reserved.
//

#import "RecipeDetailController.h"


@implementation RecipeDetailController
@synthesize scrollview;
@synthesize picture;
@synthesize instructions;
@synthesize secondpicture;
@synthesize name;

@synthesize recipename;
@synthesize recipepicture;
@synthesize recipesecondpicture;
@synthesize recipeinstructions;

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
	
		
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {	
	//message = @"Message text";
	//label.text = message;
	//[super viewWillAppear:animated];
	
	name.text = recipename;
	picture.image = [UIImage imageNamed:[NSString stringWithFormat:@"picture-%@.png",recipepicture]];
	secondpicture.image = [UIImage imageNamed:[NSString stringWithFormat:@"secondpicture-%@.png",recipesecondpicture]];
	instructions.text = recipeinstructions;
	
	
	/*
	CGSize maximumSize = CGSizeMake(300.0f, 9999.0f);
	
	NSString *instructionsString = recipeinstructions;
	
	UIFont *instructionsFont = [UIFont fontWithName:@"Helvetica" size:14];
	CGSize instructionsStringSize = [instructionsString sizeWithFont:instructionsFont constrainedToSize:maximumSize lineBreakMode:instructions.lineBreakMode];

	CGRect instructionsFrame = CGRectMake (10.0f, 300.0f, 300.0f, instructionsStringSize.height);
	
	instructions.frame = instructionsFrame;
	*/
	
	self.title = @"Recipe Details";
	
	scrollview.frame = CGRectMake(0.0f, 0.0f, 320.0f, 415.0f);
	
	CGRect textSize = CGRectMake(15.0f, 320.0f, 280.0f, FLT_MAX);
	
	UIFont *font = [UIFont fontWithName:@"Times New Roman" size:18];
	UILabel *label = [[UILabel alloc] init];
	
	label.lineBreakMode = UILineBreakModeWordWrap;
	
	// Zero Means infinite lines in this case
	label.numberOfLines = 0;
	label.font = font;
	label.text = recipeinstructions;
	label.frame = [instructions textRectForBounds:textSize limitedToNumberOfLines:0];
	
	
	instructions.frame = CGRectMake(15.0f, 320.0f, 275.0f, label.frame.size.height);
	
	secondpicture.frame = CGRectMake (52.0f, (instructions.frame.origin.y + instructions.frame.size.height)+15.0f, 215.0f, 180.0f);
	
	[scrollview setContentSize:CGSizeMake(320.0f, (secondpicture.frame.origin.y + secondpicture.frame.size.height))];

	
	[super viewWillAppear:animated];
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
    [super dealloc];
}


@end
