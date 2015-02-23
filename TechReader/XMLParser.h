//
//  NSObject+XMLParser.h
//  TechReader
//
//  Created by Hariel Giacomuzzi on 2/23/15.
//  Copyright (c) 2015 Hariel Giacomuzzi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "News.h"

@interface XMLParser : NSObject <NSXMLParserDelegate>
{
    NSString * a;
}
@property NSXMLParser *parser;
@property NSMutableArray *news;
@property NSMutableString *title;
@property NSMutableString *desc;
@property NSMutableDictionary *elements;
@property NSString *elementName;

-(NSMutableArray *)requestUpdateFrom: (NSString *) path ofElements : (NSMutableDictionary *) elements;

@end
