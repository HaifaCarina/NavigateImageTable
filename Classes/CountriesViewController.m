    //
//  CountriesViewController.m
//  NavigateImageTable
//
//  Created by Macbook on 5/12/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CountriesViewController.h"


@implementation CountriesViewController

- (void)viewDidLoad { 
	//Initialize the arrays.
	[super viewDidLoad];	
	
	listOfItems = [[NSMutableArray alloc] init]; 
	
	//Add items
	[listOfItems addObject:@"Iceland"];	
	[listOfItems addObject:@"Greenland"];
	[listOfItems addObject:@"Switzerland"];
	[listOfItems addObject:@"Norway"];
	[listOfItems addObject:@"New Zealand"];
	[listOfItems addObject:@"Greece"];
	[listOfItems addObject:@"Rome"];
	[listOfItems addObject:@"Ireland"];
	
	//Set the title

	self.title = @"Countries";  
	UITableView *tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, 320, 460) style:UITableViewStylePlain];
	[tableView setDataSource:self];
	[tableView setDelegate:self];
	[self.view addSubview:tableView];
	[tableView release]; 

}

// Customize the number of sections in the table view.
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

// Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section { 
    return [listOfItems count];
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell"; 
    
	// if a cell can be reused, it returns a UITableViewCell with the associated identifier or nil if no such cell exists
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
	
	// if no cell to reuse, then create a new one
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
	
	// Set up the cell...	
	cell.textLabel.text = [listOfItems objectAtIndex:indexPath.row];
	
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	
	FlagViewController *aController = [[FlagViewController alloc] init];
	[aController setRow: indexPath.row];	
	[self.navigationController pushViewController:aController animated:YES];
	[aController release];
}

- (void)dealloc {
	
	[listOfItems release];
    [image release];
	[super dealloc]; 
}

@end
