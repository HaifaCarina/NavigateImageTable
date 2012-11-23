//
//  CountriesViewController.h
//  NavigateImageTable
//
//  Created by Macbook on 5/12/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import	"FlagViewController.h"

@interface CountriesViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> {

	NSMutableArray *listOfItems;	
	UIImageView *image;	
	UINavigationBar *navBar;
}

@end
