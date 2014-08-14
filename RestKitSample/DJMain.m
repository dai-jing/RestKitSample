//
//  DJMain.m
//  RestKitSample
//
//  Created by Jing Dai on 8/11/14.
//  Copyright (c) 2014 Jing Dai. All rights reserved.
//

#import "DJMain.h"

@implementation DJMain

+ (RKObjectMapping *)responseMapping
{
    RKObjectMapping *mapping = [[RKObjectMapping alloc] initWithClass:[self class]];
    [mapping addAttributeMappingsFromDictionary:@{@"temp" : @"currentTemp",
                                                  @"temp_min" : @"minTemp",
                                                  @"temp_max" : @"maxTemp"}];
    
    return mapping;
}

@end
