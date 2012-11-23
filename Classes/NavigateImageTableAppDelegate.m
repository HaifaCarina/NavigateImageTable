//
//  NavigateImageTableAppDelegate.m
//  NavigateImageTable
//
//  Created by Macbook on 5/12/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "NavigateImageTableAppDelegate.h"

@implementation NavigateImageTableAppDelegate

@synthesize window;
@synthesize viewController;
@synthesize	navigationController;

#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after application launch.
    viewController = [[CountriesViewController alloc]init];

	navigationController = [[UINavigationController alloc] initWithRootViewController:viewController] ;
	[self.window addSubview:navigationController.view];
    [self.window makeKeyAndVisible];
    
    return YES;
}


- (void)dealloc {
    [window release];
	[viewController release];
	[navigationController release];
    [super dealloc];
}


@end
