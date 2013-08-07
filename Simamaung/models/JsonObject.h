//
//  JsonObject.h
//  Simamaung
//
//  Created by Arie on 8/4/13.
//  Copyright (c) 2013 netra. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JsonObject : NSObject
@property(nonatomic,strong) NSString *id_news;
@property(nonatomic,strong) NSString *slug;
@property(nonatomic,strong) NSString *url;
@property(nonatomic,strong) NSString *title;
@property(nonatomic,strong) NSString *content;
@property(nonatomic,strong) NSString *excerpt;
@property(nonatomic,strong) NSString *thumbnail;
@property(nonatomic,strong) NSString *date;
-(id) initWithDictionary:(NSDictionary *) dictionary;
@end
