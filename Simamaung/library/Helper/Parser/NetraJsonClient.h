//
//  NetraJsonClient.h
//  Simamaung
//
//  Created by Arie on 8/4/13.
//  Copyright (c) 2013 netra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFHTTPClient.h"
@interface NetraJsonClient : AFHTTPClient
+ (id)sharedInstance;
@end
