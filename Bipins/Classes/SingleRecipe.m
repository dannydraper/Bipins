//
//  SingleRecipe.m
//  Bipins
//
//  Created by Danny Draper on 24/04/2011.
//  Copyright 2011 CedeSoft Ltd. All rights reserved.
//

#import "SingleRecipe.h"


@implementation SingleRecipe


- (NSString *) getName
{
	if (_nameallocated == true)
	{
		return _name;
	} else {
		return nil;
	}
}

- (NSString *) getDescription
{
	if (_descriptionallocated == true) {
		return _description;
	} else {
		return nil;
	}
}

- (NSString *) getPicture
{
	if (_pictureallocated == true) {
		return _picture;
	} else {
		return nil;
	}
}

- (NSString *) getSecondpicture
{
	if (_secondpictureallocated == true) {
		return _secondpicture;
	} else {
		return nil;
	}
}

- (NSString *) getThumbnail
{
	if (_thumbnailallocated == true) {
		return _thumbnail;
	} else {
		return nil;
	}
}

- (NSString *) getInstructions
{
	if (_instructionsallocated == true) {
		return _instructions;
	} else {
		return nil;
	}
}




- (void) setName:(NSString *)name
{	
	if (_nameallocated == false) {
		_name = [[[NSMutableString alloc] init] retain];
		_nameallocated = true;
	}
	
	[_name setString:name];
}

- (void) setDescription:(NSString *)description
{
	if (_descriptionallocated == false) {
		_description = [[[NSMutableString alloc] init] retain];
		_descriptionallocated = true;
	}
	
	[_description setString:description];
}

- (void) setPicture:(NSString *)picture
{
	if (_pictureallocated == false) {
		_picture = [[[NSMutableString alloc] init] retain];
		_pictureallocated = true;
	}
	
	[_picture setString:picture];
}

- (void) setSecondpicture:(NSString *)secondpicture
{
	if (_secondpictureallocated == false) {
		_secondpicture = [[[NSMutableString alloc] init] retain];
		_secondpictureallocated = true;
	}
	
	[_secondpicture setString:secondpicture];
}

- (void) setThumbnail:(NSString *)thumbnail
{
	if (_thumbnailallocated == false) {
		_thumbnail = [[[NSMutableString alloc] init] retain];
		_thumbnailallocated = true;
	}
	
	[_thumbnail setString:thumbnail];
}


- (void) setInstructions:(NSString *)instructions
{
	if (_instructionsallocated == false) {
		_instructions = [[[NSMutableString alloc] init] retain];
		_instructionsallocated = true;
	}
	
	[_instructions setString:instructions];
}







- (void) appendName:(NSString *)name
{	
	if (_nameallocated == false) {
		_name = [[[NSMutableString alloc] init] retain];
		_nameallocated = true;
	}
	
	[_name appendString:name];
}

- (void) appendDescription:(NSString *)description
{
	if (_descriptionallocated == false) {
		_description = [[[NSMutableString alloc] init] retain];
		_descriptionallocated = true;
	}
	
	[_description appendString:description];
}

- (void) appendPicture:(NSString *)picture
{
	if (_pictureallocated == false) {
		_picture = [[[NSMutableString alloc] init] retain];
		_pictureallocated = true;
	}
	
	[_picture appendString:[[[picture stringByReplacingOccurrencesOfString:@"\n" withString:@""] stringByReplacingOccurrencesOfString:@" " withString:@""] stringByReplacingOccurrencesOfString:@"\t" withString:@""]];
	
}

- (void) appendSecondpicture:(NSString *)secondpicture
{
	if (_secondpictureallocated == false) {
		_secondpicture = [[[NSMutableString alloc] init] retain];
		_secondpictureallocated = true;
	}
	
	[_secondpicture appendString:[[[secondpicture stringByReplacingOccurrencesOfString:@"\n" withString:@""] stringByReplacingOccurrencesOfString:@" " withString:@""] stringByReplacingOccurrencesOfString:@"\t" withString:@""]];
}

- (void) appendThumbnail:(NSString *)thumbnail
{
	if (_thumbnailallocated == false) {
		_thumbnail = [[[NSMutableString alloc] init] retain];
		_thumbnailallocated = true;
	}
	
	
	[_thumbnail appendString:[[[thumbnail stringByReplacingOccurrencesOfString:@"\n" withString:@""] stringByReplacingOccurrencesOfString:@" " withString:@""] stringByReplacingOccurrencesOfString:@"\t" withString:@""]];
}


- (void) appendInstructions:(NSString *)instructions
{
	if (_instructionsallocated == false) {
		_instructions = [[[NSMutableString alloc] init] retain];
		_instructionsallocated = true;
	}
	
	[_instructions appendString:instructions];
}

@end
