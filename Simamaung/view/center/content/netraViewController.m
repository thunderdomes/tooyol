//
//  netraViewController.m
//  Simamaung
//
//  Created by Arie on 8/6/13.
//  Copyright (c) 2013 netra. All rights reserved.
//

#import "netraViewController.h"
#import "JsonObject.h"
@interface netraViewController ()

@end

@implementation netraViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
		self.view.backgroundColor=[UIColor whiteColor];
		result = [[NSMutableArray alloc]init];
		//add uitableview
		main=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, 320, self.view.frame.size.height-44)];
		main.delegate=self;
		main.dataSource=self;
		[self.view addSubview:main];
    }
    return self;
}
-(void)fetcData{
	[[NetraJsonClient sharedInstance] getPath:@"get_recent_posts" parameters:nil
                                     success:^(AFHTTPRequestOperation *operation, id response) {
                                         NSLog(@"Response: %@", response);
                                         for (id beerDictionary in [response objectForKey:@"posts"]) {
                                             JsonObject *beer = [[JsonObject alloc] initWithDictionary:beerDictionary];
                                             [result addObject:beer];
                                         }
                                         [main reloadData];
                                     }
                                     failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                                         NSLog(@"Error fetching beers!");
                                         NSLog(@"%@", error);
                                         
                                     }];
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return result.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle
                                       reuseIdentifier:cellIdentifier];
        cell.contentView.backgroundColor = main.backgroundColor;
        cell.textLabel.font = [UIFont boldSystemFontOfSize:14];
        cell.textLabel.textColor = [UIColor darkGrayColor];
        cell.textLabel.backgroundColor = cell.contentView.backgroundColor;
        cell.detailTextLabel.backgroundColor = cell.textLabel.backgroundColor;
    }
    
    JsonObject *beer = [result objectAtIndex:indexPath.row];
    cell.textLabel.text = beer.title;
    
    return cell;
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
