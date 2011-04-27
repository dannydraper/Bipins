//
//  CellsAppDelegate.h
//  Cells
//
//  Created by Danny Draper on 11/04/2011.
//  Copyright 2011 CedeSoft Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CellsViewController;

@interface CellsAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    CellsViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet CellsViewController *viewController;

@end

