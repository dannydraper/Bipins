//
//  CustomCell.m
//  Cells
//
//  Created by Danny Draper on 13/04/2011.
//  Copyright 2011 CedeSoft Ltd. All rights reserved.
//

#import "CustomCell.h"


@implementation CustomCell

@synthesize nameLabel;
@synthesize colorLabel;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code.
    }
    return self;
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state.
}


- (void)dealloc {
    [super dealloc];
}


@end
