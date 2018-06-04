//
//  NSString+Encode.m
//  DTMS
//
//  Created by Mital Solanki on 10/16/14.
//  Copyright (c) 2014 Origzo Technology pvt. ltd. All rights reserved.
//

#import "NSString+Encode.h"

@implementation NSString (Encode)

- (NSString *)encodeString:(NSStringEncoding)encoding
{
    //    return (NSString *) CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(NULL, (CFStringRef)self, NULL, (CFStringRef)@"-!*'\"(){}<>;:@&=+$,/?%#[]% ", CFStringConvertNSStringEncodingToEncoding(encoding)));
    return (NSString *) CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(NULL, (CFStringRef)self, NULL, (CFStringRef)@"-/:;()$&@\"[]{}#%^*+=_\\|~<>€£¥.,?!' ", CFStringConvertNSStringEncodingToEncoding(encoding)));
}

- (NSString *) EncodedString
{
    NSMutableString * output = [NSMutableString string];
    const unsigned char * source = (const unsigned char *)[self UTF8String];
    int sourceLen = (int)strlen((const char *)source);
    for (int i = 0; i < sourceLen; ++i)
    {
        const unsigned char thisChar = source[i];
        if (thisChar == ' ')
        {
            [output appendString:@"+"];
        }
        else if (thisChar == '.' || thisChar == '-' || thisChar == '_' || thisChar == '~'  || (thisChar >= 'a' && thisChar <= 'z') || (thisChar >= 'A' && thisChar <= 'Z') || (thisChar >= '0' && thisChar <= '9'))
        {
            [output appendFormat:@"%c", thisChar];
        }
        else
        {
            [output appendFormat:@"%%%02X", thisChar];
        }
    }
    return output;
}

@end
