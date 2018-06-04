//
//  Macros.h
//  CurlHair
//
//  Created by Chirag Ganatra on 15/02/16.
//  Copyright © 2016 Chirag Ganatra. All rights reserved.
//

#import "AFNetworking.h"
#import "WebService.h"
#import "AFHTTPRequestOperation.h"
#import "AFHTTPRequestOperationManager.h"

#ifndef Macros_h
#define Macros_h

#define     APPDELEGATE     ((AppDelegate *)[[UIApplication sharedApplication] delegate])


//Validations
#define REGEX_USER_NAME_LIMIT @"^.{3,10}$"
#define REGEX_USER_NAME @"[A-Za-z0-9]{3,10}"
#define REGEX_EMAIL @"[A-Z0-9a-z._%+-]{3,}+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
#define REGEX_PASSWORD_LIMIT @"^.{6,20}$"
#define REGEX_PASSWORD @"[A-Za-z0-9]{6,20}"
#define REGEX_PHONE_DEFAULT @"[0-9]{3}\\-[0-9]{3}\\-[0-9]{4}"

#define IS_IPAD (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)

//Toast Messages Macro
#define InternetFaliure     @"No Internet Connection"
#define ErrorMessage        @"Something went wrong"
#define SharingNotAvailable @"No supported application found!"


#define P_URL               @"URL"
#define P_DATA              @"DATA"
#define P_NAME              @"NAME"
#define P_FILENAME          @"FILENAME"
#define P_MIMETYPE          @"MIMETYPE"

#define userAvtarInfo       @"userAvtar"

#define MIME_TYPE_IMAGE_JPEG    @"image/jpeg"
#define MIME_TYPE_IMAGE_PNG     @"image/png"
#define MIME_TYPE_IMAGE_ALL     @"image/*"
#define MIME_TYPE_VIDEO_ALL     @"video/*"

//inApp Purchase Product ID Macro
#define INAPP_PRODUCT_ID @"com.ebiz.curlhair.inappfirst" //Temp

#endif /* Macros_h */
