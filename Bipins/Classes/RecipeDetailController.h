//
//  RecipeDetailController.h
//  Bipins
//
//  Created by Danny Draper on 21/04/2011.
//  Copyright 2011 CedeSoft Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface RecipeDetailController : UIViewController {
	IBOutlet UIScrollView *scrollview;
	
	IBOutlet UILabel *instructions;	
	IBOutlet UIImageView *picture;
	IBOutlet UIImageView *secondpicture;
	IBOutlet UILabel *name;
	
	NSString *recipename;
	NSString *recipepicture;
	NSString *recipesecondpicture;
	NSString *recipeinstructions;
}

@property (nonatomic, retain) IBOutlet UIScrollView *scrollview;
@property (nonatomic, retain) IBOutlet UILabel *instructions;
@property (nonatomic, retain) IBOutlet UILabel *name;
@property (nonatomic, retain) IBOutlet UIImageView *picture;
@property (nonatomic, retain) IBOutlet UIImageView *secondpicture;

@property (nonatomic, retain) NSString *recipename;
@property (nonatomic, retain) NSString *recipepicture;
@property (nonatomic, retain) NSString *recipesecondpicture;
@property (nonatomic, retain) NSString *recipeinstructions;



@end
