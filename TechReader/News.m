//
//  NSObject+News.m
//  TechReader
//
//  Created by Hariel Giacomuzzi on 2/23/15.
//  Copyright (c) 2015 Hariel Giacomuzzi. All rights reserved.
//

#import "News.h"

@implementation News

-(id)initWithTitle : (NSString *) title
    andDescription : (NSString *) desc
{
    self = [super init];
    if (self) {
        self.title = title;
        self.desc = desc;
    }
    
    return self;
}

@end
