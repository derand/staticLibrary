//
//  mainAppAppDelegate.h
//  mainApp
//
//  Created by maliy on 9/10/10.
//  Copyright 2010 interMobile. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface mainAppAppDelegate : NSObject <UIApplicationDelegate> {
    
	UIWindow *window;
	UINavigationController *navigationController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@end

