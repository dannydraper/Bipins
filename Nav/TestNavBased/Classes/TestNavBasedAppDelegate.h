//
//  TestNavBasedAppDelegate.h
//  TestNavBased
//
//  Created by Danny Draper on 30/03/2011.
//  Copyright 2011 CedeSoft Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TestNavBasedAppDelegate : NSObject <UIApplicationDelegate> {
    
    UIWindow *window;
    UINavigationController *navigationController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@end

