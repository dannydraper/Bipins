//
//  ProductDetailView.h
//  Bipins
//
//  Created by Danny Draper on 09/04/2011.
//  Copyright 2011 CedeSoft Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BipinsAppDelegate.h"

@interface ProductDetailView : UIViewController {
	IBOutlet UIScrollView *scrollview;
	
}

- (IBAction) buyButtonpressed:(id)sender;

@property (nonatomic, retain) IBOutlet UIScrollView *scrollview;

@end
