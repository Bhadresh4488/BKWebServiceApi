//
//  NSArray+DeepCopy.m
//  DTMS
//
//  Created by Mital Solanki on 11/3/14.
//  Copyright (c) 2014 Origzo Technology pvt. ltd. All rights reserved.
//

#import "NSArray+DeepCopy.h"

@implementation NSArray (DeepCopy)

- (NSArray*) deepCopy
{
    NSUInteger count = [self count];
    id cArray[count];
    
    for (unsigned int i = 0; i < count; ++i)
    {
        id obj = [self objectAtIndex:i];
        if ([obj respondsToSelector:@selector(deepCopy)])
            cArray[i] = [obj deepCopy];
        else
            cArray[i] = [obj copy];
    }
    
    NSArray *ret = [NSArray arrayWithObjects:cArray count:count];
    return ret;
}

- (NSMutableArray*) mutableDeepCopy
{
    NSUInteger count = [self count];
    id cArray[count];
    
    for (unsigned int i = 0; i < count; ++i)
    {
        id obj = [self objectAtIndex:i];
        
        // Try to do a deep mutable copy, if this object supports it
        if ([obj respondsToSelector:@selector(mutableDeepCopy)])
            cArray[i] = [obj mutableDeepCopy];
        
        // Then try a shallow mutable copy, if the object supports that
        else if ([obj respondsToSelector:@selector(mutableCopyWithZone:)])
            cArray[i] = [obj mutableCopy];
        
        // Next try to do a deep copy
        else if ([obj respondsToSelector:@selector(deepCopy)])
            cArray[i] = [obj deepCopy];
        
        // If all else fails, fall back to an ordinary copy
        else
            cArray[i] = [obj copy];
    }
    
    NSMutableArray *ret = [NSMutableArray arrayWithObjects:cArray count:count];
    return ret;
}

@end
