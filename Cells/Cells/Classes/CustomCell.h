//
//  CustomCell.h
//  Cells
//
//  Created by Danny Draper on 13/04/2011.
//  Copyright 2011 CedeSoft Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CustomCell : UITableViewCell {
	IBOutlet UILabel *nameLabel;
	IBOutlet UILabel *colorLabel;
}

@property (nonatomic, retain) UILabel *nameLabel;
@property (nonatomic, retain) UILabel *colorLabel;

@end
