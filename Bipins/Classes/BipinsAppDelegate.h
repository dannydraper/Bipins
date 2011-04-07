//
//  BipinsAppDelegate.h
//  Bipins
//
//  Created by Danny Draper on 02/04/2011.
//  Copyright 2011 CedeSoft Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BipinsAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	IBOutlet UINavigationController *navController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) UINavigationController *navController;

@end

