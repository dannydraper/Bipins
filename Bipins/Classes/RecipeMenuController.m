//
//  RecipeMenuController.m
//  Bipins
//
//  Created by Danny Draper on 06/04/2011.
//  Copyright 2011 CedeSoft Ltd. All rights reserved.
//

#import "RecipeMenuController.h"


@implementation RecipeMenuController
@synthesize _list;

#pragma mark -
#pragma mark Initialization

/*
- (id)initWithStyle:(UITableViewStyle)style {
    // Override initWithStyle: if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/


#pragma mark -
#pragma mark View lifecycle


- (void) parseXML:(NSString *)xmldata
{
	/*
	_wikixmlfound = false;
	_wantedxmlchars = false;
	_xmlparser = [[NSXMLParser alloc] initWithData:[xmldata dataUsingEncoding:NSUTF8StringEncoding]];
	
	if (_wantedxmlselection != nil) {
		[_wantedxmlselection release];
		_wantedxmlselection = nil;
	}
	
	if (_wantedxmlselection == nil) {
		_wantedxmlselection = [[[NSMutableString alloc] init] retain];
	}
	
	[_xmlparser setDelegate:self];
	[_xmlparser parse];
	*/
	
	_xmlparser = [[NSXMLParser alloc] initWithData:[xmldata dataUsingEncoding:NSUTF8StringEncoding]];
	
	[_xmlparser setDelegate:self];
	[_xmlparser parse];
}

// These callbacks get triggered by the XML parser...

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict {
	
	if (_currentelementallocated != true) {
		_currentelement = [[[NSMutableString alloc] init] retain];
		_currentelementallocated = true;
	}
	
	
	//NSLog (@"An element was started");
	NSLog(@"An element was started: %@", elementName);
	
	[_currentelement setString:elementName];
	
	/*
	if ([elementName isEqualToString:@"rev"] == true) {
		_wantedxmlchars = true;
	}
	*/
}

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
	/*
	if (_wantedxmlchars == true) {
		[_wantedxmlselection appendString:string];
	}
	//NSLog(@"Character found: %@", string);
	*/
	
	if (_currentelementallocated == true) {
		if ([_currentelement isEqualToString:@"Name"] == true) {
			[_currentrecipe appendName:string];
			//NSLog (@"Added %@ to name.", string);
		}	
	
		if ([_currentelement isEqualToString:@"Description"] == true) {
			[_currentrecipe appendDescription:string];
			//NSLog (@"Added %@ to description.", string);
		}
		
		if ([_currentelement isEqualToString:@"Picture"] == true) {
			[_currentrecipe appendPicture:string];
			//NSLog (@"Added %@ to picture.", string);
		}
		
		if ([_currentelement isEqualToString:@"Thumbnail"] == true) {
			[_currentrecipe appendThumbnail:string];
			//NSLog (@"Added %@ to thumnbnail.", string);
		}
		
		if ([_currentelement isEqualToString:@"SecondPicture"] == true) {
			[_currentrecipe appendSecondpicture:string];
			//NSLog (@"Added %@ to secondpicture.", string);			
		}
		
		if ([_currentelement isEqualToString:@"Instructions"] == true) {
			[_currentrecipe appendInstructions:string];
			//NSLog (@"Added %@ to instructions.", string);			
		}
	}
	
	
	
	
}

- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {
	
	
	//NSLog (@"An element was ended.");
	NSLog (@"An element was ended: %@", elementName);
	
	if ([elementName isEqualToString:@"Recipe"] == true) {
		
		SingleRecipe *newrecipe = [[SingleRecipe alloc] init];
		
		[newrecipe setName:[_currentrecipe getName]];
		[newrecipe setDescription:[_currentrecipe getDescription]];
		[newrecipe setPicture:[_currentrecipe getPicture]];
		[newrecipe setSecondpicture:[_currentrecipe getSecondpicture]];
		[newrecipe setThumbnail:[_currentrecipe getThumbnail]];
		[newrecipe setInstructions:[_currentrecipe getInstructions]];
		
		[_recipelist addObject:newrecipe];
		
		[_currentrecipe setName:@""];
		[_currentrecipe setDescription:@""];
		[_currentrecipe setPicture:@""];
		[_currentrecipe setSecondpicture:@""];
		[_currentrecipe setThumbnail:@""];
		[_currentrecipe setInstructions:@""];
		
		
		NSLog (@"A new recipe has been added to the main list...");
	}
	
	/*
	if ([elementName isEqualToString:@"rev"] == true) {
		NSLog (@"Found rev XML tag!");
		
		_wantedxmlchars = false;
		
		if ([_wantedxmlselection length] > 0) {
			
		} else {
			NSLog (@"Warning! Wanted XML Selection is 0!");
		}
		
		if (_htmlparsedoutput == nil) {
			// Allocate some memory for the html parsed output
			_htmlparsedoutput = [[[NSMutableString alloc] init] retain];
		}
		
		//NSLog (@"Wanted XML Selection: %@", _wantedxmlselection);
		_wikixmlfound = true;
		// Kick off the next stage of parsing - html tag parsing.
		
		NSLog (@"didEndElement: _wantedxmlselection length: %i", [_wantedxmlselection length]);
		
		[_htmlparser parse:_wantedxmlselection];
	}
	*/
}

- (void)parserDidEndDocument:(NSXMLParser *)parser
{
	/*
	if (_wikixmlfound == false) {
		// The XML parsing was complete but no wiki xml data was found
		// We need to display an appropriate message.
		if ([_delegateobject respondsToSelector:@selector(wikiarticleNotfound)]) {
			[_delegateobject wikiarticleNotfound];
		}
	}
	*/
	
	NSLog (@"The XML Parser has finished parsing.");
}


- (void)viewDidLoad {
	
	
	_currentrecipe = [[[SingleRecipe alloc] init] retain];
	
	_recipelist = [[[NSMutableArray alloc] init] retain];
	
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
	
	self._list = array;
	
	self.title = @"Bipin's Recipes";
	
	NSString   *path = [[NSBundle mainBundle] pathForResource: @"BipinContentXML" ofType: @"xml"];
	NSError    *error = nil;
	NSString   *data = [NSString stringWithContentsOfFile: path encoding: NSUTF8StringEncoding error: &error];
	
	//NSLog (@"Data: %@", data);
	
	[self parseXML:data];
	
	[array release];
	
    [super viewDidLoad];

    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}


/*
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}
*/
/*
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}
*/
/*
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}
*/
/*
- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
}
*/
/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/


#pragma mark -
#pragma mark Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [_recipelist count];
}


// Customize the appearance of table view cells.
/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
    // Configure the cell...
    NSUInteger row = [indexPath row];
	NSString *rowString = [_list objectAtIndex:row];

	cell.text = rowString;
	UIImage *image = [UIImage imageNamed:@"Masala.png"];
	cell.image = image;
	
    return cell;
}
*/


- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	static NSString *customrecipecell = @"CustomRecipeCell";
	
	CustomRecipeCell *cell = (CustomRecipeCell *)[tableView dequeueReusableCellWithIdentifier: customrecipecell];
	
	if (cell == nil)
	{
		NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"CustomRecipeCell" owner:self options:nil];
		cell = [nib objectAtIndex:0];
	}
	
	NSUInteger row = [indexPath row];
	
	SingleRecipe *rowRecipe = [_recipelist objectAtIndex:row];
	
	NSString *rowString = [rowRecipe getName];
	//NSString *rowString = [_recipelist objectAtIndex:row];
	
	cell.cellimage.image = [UIImage imageNamed:[NSString stringWithFormat:@"thumbnail-%@.png",[rowRecipe getThumbnail]]];
	cell.celltitle.text = rowString;
	cell.celldescription.text = [rowRecipe getDescription];
	
	//NSUInteger row = [indexPath row];
	//NSDictionary *rowData = [self.computers objectAtIndex:row];
	//cell.colorLabel.text = [rowData objectForKey:@"Color"];
	//cell.nameLabel.text = [rowData objectForKey:@"Name"];
	
	return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/


/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source.
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }   
}
*/


/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/


/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
	return 80;
}

#pragma mark -
#pragma mark Table view delegate

- (void) rowSelected:(NSIndexPath *)indexPath {
	
	
	
	NSUInteger row = [indexPath row];
	
	SingleRecipe *rowRecipe = [_recipelist objectAtIndex:row];
	
	//NSString *rowString = [rowRecipe getName];
	//NSString *rowString = [_recipelist objectAtIndex:row];
	
	//cell.cellimage.image = [UIImage imageNamed:[NSString stringWithFormat:@"thumbnail-%@.png",[rowRecipe getThumbnail]]];
	//cell.celltitle.text = rowString;
	//cell.celldescription.text = [rowRecipe getDescription];
	
	
	
	
	
	RecipeDetailController *recipedetailcontroller;
	
	//recipedetailcontroller = [[RecipeDetailController alloc] initWithNibName:@"RecipeDetailController" bundle:nil];
	recipedetailcontroller = [[RecipeDetailController alloc] init];
	
	
	//recipedetailcontroller.name.text = [rowRecipe getName];
	
	recipedetailcontroller.recipename = [rowRecipe getName];
	recipedetailcontroller.recipeinstructions = [rowRecipe getInstructions];
	recipedetailcontroller.recipepicture = [rowRecipe getPicture];
	recipedetailcontroller.recipesecondpicture = [rowRecipe getSecondpicture];
	
	
	BipinsAppDelegate *delegate = [[UIApplication sharedApplication] delegate];
	
	[delegate.navController pushViewController:recipedetailcontroller animated:YES];
	
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Navigation logic may go here. Create and push another view controller.
    /*
    <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
    [self.navigationController pushViewController:detailViewController animated:YES];
    [detailViewController release];
    */
	
	/*
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Hey, do you see the disclosure button?" message:@"If you're trying to drill down touch that instead" delegate:nil cancelButtonTitle:@"Won't happen again" otherButtonTitles:nil];
	
	[alert show];
	[alert release];
	*/
	
	
	[self rowSelected:indexPath];
	
	/*
	RecipeDetailController *recipedetailcontroller;
	
	recipedetailcontroller = [[RecipeDetailController alloc] initWithNibName:@"RecipeDetailController" bundle:nil];
	
	BipinsAppDelegate *delegate = [[UIApplication sharedApplication] delegate];
	
	[delegate.navController pushViewController:recipedetailcontroller animated:YES];
	*/
}

- (void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath
{
	/*
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
	*/
	
	[self rowSelected:indexPath];
	
	//NSLog (@"Accessory button tapped");
}

#pragma mark -
#pragma mark Memory management

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Relinquish ownership any cached data, images, etc. that aren't in use.
}


- (void)viewDidUnload {
    // Relinquish ownership of anything that can be recreated in viewDidLoad or on demand.
    // For example: self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end

