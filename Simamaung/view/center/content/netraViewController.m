//
//  netraViewController.m
//  Simamaung
//
//  Created by Arie on 8/6/13.
//  Copyright (c) 2013 netra. All rights reserved.
//

#import "netraViewController.h"

@interface netraViewController ()

@end

@implementation netraViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
		self.view.backgroundColor=[UIColor whiteColor];
		
		//add uitableview
		main=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, 320, self.view.frame.size.height-44)];
		[self.view addSubview:main];
    }
    return self;
}
-(void)fetcData{
	NSLog(@"a");
	[[NetraJsonClient sharedInstance] getPath:@"get_recent_post" parameters:nil
									  success:^(AFHTTPRequestOperation *operation, id response) {
										  NSLog(@"Response: %@", response);
																			  }
									  failure:^(AFHTTPRequestOperation *operation, NSError *error) {
										  NSLog(@"Error fetching beers!");
										  NSLog(@"%@", error);
									  }];

}
- (void)viewDidLoad
{
    [super viewDidLoad];
	
	[self fetcData];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
