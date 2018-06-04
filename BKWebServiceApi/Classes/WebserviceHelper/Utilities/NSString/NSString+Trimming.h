//
//  NSString+Trimming.h
//  DTMS
//
//  Created by Mital Solanki on 10/1/14.
//  Copyright (c) 2014 Origzo Technology pvt. ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Trimming)

- (NSString *)stringByTrimmingLeadingWhitespace;
- (NSString *)stringByTrimmingTrailingWhitespace;
- (NSString *)stringByTrimmingLeadingWhitespaceAndNewline;
- (NSString *)stringByTrimmingTrailingWhitespaceAndNewline;

@end
