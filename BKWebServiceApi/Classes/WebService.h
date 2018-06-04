//
//  WebService.h
//  Adventure Friend
//
//  Created by Krunal Bhavsar on 09/07/14.
//  Copyright (c) 2014 Openxcell. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"


@interface WebService : NSObject
{

}

+(void)postRequestWithUrl:(NSString *)strURL andParameters:(NSDictionary *)mParameters withMediaParameters:(NSArray *)aryMedia inView:(UIView *)vwProgress response:(void (^)(id response, NSError *error))getResponse;
+(void)postRequestWithUrl:(NSString *)strURL andParameters:(NSDictionary *)mParameters inView:(UIView *)vwProgress response:(void (^)(id response, NSError *error))getResponse;
+(void)getRequestWithUrl:(NSString *)strURL andParameters:(NSDictionary *)mParameters inView:(UIView *)vwProgress response:(void (^)(id response, NSError *error))getResponse;
+(void)postXMLRequestWithUrl:(NSString *)strURL andParameters:(NSDictionary *)mParameters inView:(UIView *)vwProgress response:(void (^)(id response, NSError *error))getResponse;

//Media
+(void)postRequestWithUrlAndMedia:(NSString *)strURL andParameters:(NSDictionary *)mParameters withMediaParameters:(NSArray *)aryMedia inView:(UIView *)vwProgress response:(void (^)(id response, NSError *error))getResponse;

@end
