    //
//  FlagViewController.m
//  NavigateImageTable
//
//  Created by Macbook on 5/12/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "FlagViewController.h"


@implementation FlagViewController

- (void) viewDidLoad {
	flags = [NSArray arrayWithObjects:
			 [UIImage imageNamed:@"iceland.png"],
			 [UIImage imageNamed:@"greenland.png"],
			 [UIImage imageNamed:@"switzerland.png"],
			 [UIImage imageNamed:@"norway.png"],
			 [UIImage imageNamed:@"newzealand.png"],
			 [UIImage imageNamed:@"greece.png"],
			 [UIImage imageNamed:@"rome.png"],
			 [UIImage imageNamed:@"ireland.png"],
			 nil];	
	UIImageView *image = [[UIImageView alloc] initWithImage:[flags objectAtIndex:row]];
	[self.view addSubview:image];
	
}

- (void) setRow: (int) rowInput {
	row = rowInput;
}

- (void)dealloc {
    [super dealloc];
}


@end
