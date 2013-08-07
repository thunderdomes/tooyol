//
//  netra.h
//  Simamaung
//
//  Created by Arie on 8/6/13.
//  Copyright (c) 2013 netra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFHTTPClient.h"
@interface netra : AFHTTPClient
+ (id)sharedInstance;
@end