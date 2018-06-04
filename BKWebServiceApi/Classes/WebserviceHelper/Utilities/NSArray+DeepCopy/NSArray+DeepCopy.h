//
//  NSArray+DeepCopy.h
//  DTMS
//
//  Created by Mital Solanki on 11/3/14.
//  Copyright (c) 2014 Origzo Technology pvt. ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (DeepCopy)

- (NSArray *) deepCopy;
- (NSMutableArray *) mutableDeepCopy;

@end
