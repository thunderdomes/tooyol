//
//  netraAppDelegate.h
//  Simamaung
//
//  Created by Arie on 8/1/13.
//  Copyright (c) 2013 netra. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "netraLeftViewController.h"
#import "netraRightViewController.h"
#import "netraViewController.h"
@interface netraAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property(nonatomic,strong) netraLeftViewController *left;
@property(nonatomic,strong) netraRightViewController *right;
@property(nonatomic,strong) netraViewController *center;
@property (strong, nonatomic) JASidePanelController *viewController;
@end
