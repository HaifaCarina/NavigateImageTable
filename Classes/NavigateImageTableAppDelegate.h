//
//  NavigateImageTableAppDelegate.h
//  NavigateImageTable
//
//  Created by Macbook on 5/12/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CountriesViewController.h"

@class CountriesViewController;

@interface NavigateImageTableAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	CountriesViewController *viewController;
	UINavigationController *navigationController;
}

@property (nonatomic, retain) UIWindow *window;
@property (nonatomic, retain) CountriesViewController *viewController;
@property (nonatomic, retain) UINavigationController *navigationController;

@end

