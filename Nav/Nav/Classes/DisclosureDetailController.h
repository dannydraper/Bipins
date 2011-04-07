//
//  DisclosureDetailController.h
//  Nav
//
//  Created by Danny Draper on 30/03/2011.
//  Copyright 2011 CedeSoft Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface DisclosureDetailController : UIViewController {
	IBOutlet	UILabel	*label;
	NSString	*message;
}

@property (nonatomic, retain) UILabel *label;
@property (nonatomic, retain) NSString *message;

@end
