//
//  NSObject+News.h
//  TechReader
//
//  Created by Hariel Giacomuzzi on 2/23/15.
//  Copyright (c) 2015 Hariel Giacomuzzi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface News : NSObject

@property NSString *title;
@property NSString *desc;

-(id)initWithTitle : (NSString *) title
    andDescription : (NSString *) desc;

@end
