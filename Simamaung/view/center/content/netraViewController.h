//
//  netraViewController.h
//  Simamaung
//
//  Created by Arie on 8/6/13.
//  Copyright (c) 2013 netra. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface netraViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
{
	UITableView *main;
	NSArray *results;
	NSMutableArray *result;
}

@end
