//
//  FlagViewController.h
//  NavigateImageTable
//
//  Created by Macbook on 5/12/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface FlagViewController : UIViewController {
	NSMutableArray *flags;
	int row;
}

- (void) setRow: (int) rowInput;
@end
