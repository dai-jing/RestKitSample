//
//  DJAPIClient.h
//  RestKitSample
//
//  Created by Jing Dai on 8/13/14.
//  Copyright (c) 2014 Jing Dai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DJAPIClient : NSObject

/**
 Return the shared instance of the API client
 
 @return The shared API client
 */
+ (DJAPIClient *)sharedInstance;

/**
 Request data with the relative url, url parameters and base model class
 
 @param path Relative url that you want to request data.
 @param model Model class you want map the data to.
 @param params Url parameters.
 @param successCallback Success callback block with response data.
 @param errorCallback Failure callback block with error.
 */

- (void)requestPath:(NSString *)path withModel:(id)model params:(id)params success:(DJAPISuccessBlock)successCallback failure:(DJAPIFailureBlock)errorCallback;

@end
