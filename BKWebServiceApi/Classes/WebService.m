//
//  WebService.m
//  Adventure Friend
//
//  Created by Krunal Bhavsar on 09/07/14.
//  Copyright (c) 2014 Openxcell. All rights reserved.
//

#import "WebService.h"
#import "Macros.h"

@implementation WebService

+(AFHTTPRequestOperationManager *)operationManager
{
    NSURL *url = [NSURL URLWithString:@""];
    return [[AFHTTPRequestOperationManager alloc] initWithBaseURL:url];
}

+(void)postRequestWithUrl:(NSString *)strURL andParameters:(NSDictionary *)mParameters inView:(UIView *)vwProgress response:(void (^)(id response, NSError *error))getResponse
{
    [self postRequestWithUrl:strURL andParameters:mParameters withMediaParameters:nil inView:vwProgress response:getResponse];
}

+(void)postRequestWithUrlAndMedia:(NSString *)strURL andParameters:(NSDictionary *)mParameters withMediaParameters:(NSArray *)aryMedia inView:(UIView *)vwProgress response:(void (^)(id response, NSError *error))getResponse
{
    [self postRequestWithUrl:strURL andParameters:mParameters withMediaParameters:aryMedia inView:vwProgress response:getResponse];
}

+(void)postRequestWithUrl:(NSString *)strURL andParameters:(NSDictionary *)mParameters withMediaParameters:(NSArray *)aryMedia inView:(UIView *)vwProgress response:(void (^)(id response, NSError *error))getResponse
{
    strURL=[strURL stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSLog(@"%@ \n Post ->%@",strURL,mParameters);
    if(vwProgress)
    {
        //[AppUtility show:vwProgress];
    }
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript", @"text/html", nil];
    
    [manager POST:strURL parameters:mParameters constructingBodyWithBlock:^(id<AFMultipartFormData> formData) {
        
        for(NSDictionary *dic in aryMedia)
        {
            if([dic valueForKey:P_URL])
            {
                [formData appendPartWithFileURL:[NSURL URLWithString:dic[P_URL]] name:dic[P_NAME] error:nil];
            }
            else if([dic valueForKey:P_DATA])
            {
                [formData appendPartWithFileData:dic[P_DATA] name:dic[P_NAME] fileName:dic[P_FILENAME] mimeType:P_MIMETYPE];
            }
        }
        
    } success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
            // NSLog(@"-- %@",operation.responseString);
        if(vwProgress)
        {
            //[AppUtility hide:vwProgress];
        }
        getResponse(responseObject,nil);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        NSLog(@"-- %@",operation.responseString);
        if(vwProgress)
        {
            //[AppUtility hide:vwProgress];
        }
        getResponse(nil,error);
        /*
        NSString *strError = [NSString stringWithFormat:@"%@",error];
        Alert(@"Error", strError);
         */
        //Alert(@"Error", NetworkError);
        
    }];
}

//XML POST -----------
+(void)postXMLRequestWithUrl:(NSString *)strURL andParameters:(NSDictionary *)mParameters inView:(UIView *)vwProgress response:(void (^)(id response, NSError *error))getResponse
{
    [self postXMLRequestWithUrl:strURL andParameters:mParameters withMediaParameters:nil inView:vwProgress response:getResponse];
}
+(void)postXMLRequestWithUrl:(NSString *)strURL andParameters:(NSDictionary *)mParameters withMediaParameters:(NSArray *)aryMedia inView:(UIView *)vwProgress response:(void (^)(id response, NSError *error))getResponse
{
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    
    // Make sure to set the responseSerializer correctly
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    
    [manager POST:strURL parameters:mParameters constructingBodyWithBlock:^(id<AFMultipartFormData> formData) {
        
        for(NSDictionary *dic in aryMedia)
        {
            if([dic valueForKey:P_URL])
            {
                [formData appendPartWithFileURL:[NSURL URLWithString:dic[P_URL]] name:dic[P_NAME] error:nil];
            }
            else if([dic valueForKey:P_DATA])
            {
                [formData appendPartWithFileData:dic[P_DATA] name:dic[P_NAME] fileName:dic[P_FILENAME] mimeType:P_MIMETYPE];
            }
        }
        
    } success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        NSLog(@"Success -- %@",operation.responseString);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        NSLog(@"Failure -- %@",operation.responseString);
        
    }];
}


+(void)getRequestWithUrl:(NSString *)strURL andParameters:(NSDictionary *)mParameters inView:(UIView *)vwProgress response:(void (^)(id response, NSError *error))getResponse
{
    if(vwProgress)
    {
       // [AppUtility show:vwProgress];
    }
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript", @"text/html", nil];
    
    [manager GET:strURL parameters:mParameters success:^(AFHTTPRequestOperation *operation, id responseObject) {
        if(vwProgress)
        {
            //[AppUtility hide:vwProgress];
        }
        getResponse(responseObject,nil);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
         NSLog(@"Failure -- %@",operation.responseString);
    }];
}
@end
