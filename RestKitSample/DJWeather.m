//
//  DJWeather.m
//  RestKitSample
//
//  Created by Jing Dai on 8/11/14.
//  Copyright (c) 2014 Jing Dai. All rights reserved.
//

#import "DJWeather.h"

@implementation DJWeather

+ (RKObjectMapping *)responseMapping
{
    RKObjectMapping *mapping = [[RKObjectMapping alloc] initWithClass:[self class]];
    [mapping addAttributeMappingsFromDictionary:@{@"description": @"weatherDescription"}];
    
    return mapping;
}

@end
