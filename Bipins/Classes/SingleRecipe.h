//
//  SingleRecipe.h
//  Bipins
//
//  Created by Danny Draper on 24/04/2011.
//  Copyright 2011 CedeSoft Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface SingleRecipe : NSObject {
	NSMutableString *_name;
	NSMutableString *_description;
	NSMutableString *_picture;
	NSMutableString *_secondpicture;
	NSMutableString *_thumbnail;
	NSMutableString *_instructions;
	
	bool _nameallocated;
	bool _descriptionallocated;
	bool _pictureallocated;
	bool _secondpictureallocated;
	bool _thumbnailallocated;
	bool _instructionsallocated;
}

- (NSString *) getName;
- (NSString *) getDescription;
- (NSString *) getPicture;
- (NSString *) getSecondpicture;
- (NSString *) getThumbnail;
- (NSString *) getInstructions;

- (void) setName:(NSString *)name;
- (void) setDescription:(NSString *)description;
- (void) setPicture:(NSString *)picture;
- (void) setSecondpicture:(NSString *)secondpicture;
- (void) setThumbnail:(NSString *)thumbnail;
- (void) setInstructions:(NSString *)instructions;

- (void) appendName:(NSString *)name;
- (void) appendDescription:(NSString *)description;
- (void) appendPicture:(NSString *)picture;
- (void) appendSecondpicture:(NSString *)secondpicture;
- (void) appendThumbnail:(NSString *)thumbnail;
- (void) appendInstructions:(NSString *)instructions;

@end
