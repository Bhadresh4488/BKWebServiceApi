//
//  NSDictionary+ParameterEncoding.m
//  DTMS
//
//  Created by Mital Solanki on 11/21/14.
//  Copyright (c) 2014 Origzo Technology pvt. ltd. All rights reserved.
//

#import "NSDictionary+ParameterEncoding.h"

// helper function: get the string form of any object
static NSString * toString(id object)
{
    return [NSString stringWithFormat: @"%@", object];
}

// helper function: get the url encoded string form of any object
static NSString * urlEncode(id object)
{
    NSString *string = toString(object);
    return [string stringByAddingPercentEscapesUsingEncoding: NSUTF8StringEncoding];
}

@implementation NSDictionary (ParameterEncoding)

-(NSString *)parameterEncoding
{
    NSMutableArray *parts = [NSMutableArray array];
    for (id key in self)
    {
        id value = [self objectForKey: key];
        NSString *part = [NSString stringWithFormat: @"%@=%@", urlEncode(key), urlEncode(value)];
        [parts addObject: part];
    }
    return [parts componentsJoinedByString: @"&"];
}

@end
