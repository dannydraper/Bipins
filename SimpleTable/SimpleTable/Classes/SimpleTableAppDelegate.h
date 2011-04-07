//
//  SimpleTableAppDelegate.h
//  SimpleTable
//
//  Created by Danny Draper on 17/03/2011.
//  Copyright 2011 CedeSoft Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SimpleTableViewController;

@interface SimpleTableAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    SimpleTableViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet SimpleTableViewController *viewController;

@end

