//
//  NavAppDelegate.h
//  Nav
//
//  Created by Danny Draper on 23/03/2011.
//  Copyright 2011 CedeSoft Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NavAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	IBOutlet UINavigationController *navController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) UINavigationController *navController;

@end

