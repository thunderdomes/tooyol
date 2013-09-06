//
//  JsonObject.m
//  Simamaung
//
//  Created by Arie on 8/4/13.
//  Copyright (c) 2013 netra. All rights reserved.
//

#import "JsonObject.h"

@implementation JsonObject

@synthesize id_news=_id_news;
@synthesize slug=_slug;
@synthesize url=_url;
@synthesize title;
@synthesize content=_content;
@synthesize excerpt=_excerpt;
@synthesize thumbnail=_thumbnail;
@synthesize date=_date;

-(id) initWithDictionary:(NSDictionary *) dictionary
{
	self=[super init];
    
	if(self){
		//_id_news=[NSString stringWithFormat:@"%@",[dictionary objectForKey:@"id"]];
		//_slug=[dictionary objectForKey:@"slug"];
		//_url=[dictionary objectForKey:@"url"];
		title=[dictionary objectForKey:@"title"];
		//_content=[dictionary objectForKey:@"content"];
		//_excerpt=[dictionary objectForKey:@"excerpt"];
		
		
	}
	return self;
}
@end
