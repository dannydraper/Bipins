//
//  CustomRecipeCell.h
//  Bipins
//
//  Created by Danny Draper on 16/04/2011.
//  Copyright 2011 CedeSoft Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CustomRecipeCell : UITableViewCell {
	IBOutlet UIImageView *cellimage;
	IBOutlet UILabel *celltitle;
	IBOutlet UILabel *celldescription;
}

@property (nonatomic, retain) UIImageView *cellimage;
@property (nonatomic, retain) UILabel *celltitle;
@property (nonatomic, retain) UILabel *celldescription;

@end
