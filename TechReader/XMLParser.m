//
//  NSObject+XMLParser.m
//  TechReader
//
//  Created by Hariel Giacomuzzi on 2/23/15.
//  Copyright (c) 2015 Hariel Giacomuzzi. All rights reserved.
//

#import "XMLParser.h"

@implementation  XMLParser

-(NSMutableArray *)requestUpdateFrom: (NSString *) path ofElements : (NSMutableDictionary *) elements{
    
    NSURL *xmlPath = [NSURL URLWithString:path];
    self.elements = elements;
    
    self.parser = [[NSXMLParser alloc] initWithContentsOfURL:xmlPath];
    self.parser.delegate = self;
    if([self.parser parse]){
        NSLog(@"Parse Success!");
    }else{
        NSLog(@"Parse Error");
    }
    
    self.title = [@"" mutableCopy];
    self.desc = [@"" mutableCopy];
    
    return self.news;
}


-(void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName
 namespaceURI:(NSString *)namespaceURI
 qualifiedName:(NSString *)qName
   attributes:(NSDictionary *)attributeDict {
    self.elementName = elementName;
}

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
    if ([self.elements objectForKey:string]) {
        switch ([[self.elements objectForKey:string] integerValue]) {
            case 0:
                [self.title appendString:string];
                break;
                
            default:
                [self.desc appendString:string];
                break;
        }
    }
}

- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {
    if(self.title != nil && self.desc != nil){
        
        News *n = [[News alloc] initWithTitle:self.title andDescription:self.desc];
        [self.news addObject:n];
        
        self.title = [@"" mutableCopy];
        self.desc = [@"" mutableCopy];
        
    }
    
    self.elementName = nil;
    
}

@end
