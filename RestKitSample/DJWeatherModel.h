//
//  DJModel.h
//  RestKitSample
//
//  Created by Jing Dai on 8/11/14.
//  Copyright (c) 2014 Jing Dai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <RestKit/RestKit.h>

@interface DJWeatherModel : NSObject

/**
 RKObjectMapping object that encapsulates configuration for transforming object representations
 
 @return an RKObjectMapping object 
 */
+ (RKObjectMapping *)responseMapping;

/**
 RKResponseDescriptor object that describes an object mappable response
 
 RKResponseDescriptor describes an object mappable response that may be returned from a remote web application 
 in terms of an object mapping, a key path, a SOCKit pattern for matching the URL, and a set of status codes 
 that define the circumstances in which the mapping is appropriate for a given response.
 
 @return an RKResponseDescriptor object
 */
+ (RKResponseDescriptor *)responseDescriptor;

@end
