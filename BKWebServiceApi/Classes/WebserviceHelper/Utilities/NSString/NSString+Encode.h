//
//  NSString+Encode.h
//  DTMS
//
//  Created by Mital Solanki on 10/16/14.
//  Copyright (c) 2014 Origzo Technology pvt. ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Encode)

- (NSString *)encodeString:(NSStringEncoding)encoding;
- (NSString *)EncodedString;

@end
