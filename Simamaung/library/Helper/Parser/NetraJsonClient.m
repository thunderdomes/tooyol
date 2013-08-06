//
//  NetraJsonClient.m
//  Simamaung
//
//  Created by Arie on 8/4/13.
//  Copyright (c) 2013 netra. All rights reserved.
//

#import "NetraJsonClient.h"
#import "AFJSONRequestOperation.h"
#define netraBaseUrl @"http://simamaung.com/api?"
#define BeersAPIToken @"1234abcd"
@implementation NetraJsonClient


+ (id)sharedInstance {
    static NetraJsonClient *__sharedInstance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        __sharedInstance = [[NetraJsonClient alloc] initWithBaseURL:[NSURL URLWithString:netraBaseUrl]];
    });
    
    return __sharedInstance;
}

- (id)initWithBaseURL:(NSURL *)url {
    self = [super initWithBaseURL:url];
	if (!self) {
        return nil;
    }
    if (self) {
		[self setDefaultHeader:@"Accept" value:@"application/json"];
    }
    
    return self;
}

@end
