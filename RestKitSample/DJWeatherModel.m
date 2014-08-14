//
//  DJModel.m
//  RestKitSample
//
//  Created by Jing Dai on 8/11/14.
//  Copyright (c) 2014 Jing Dai. All rights reserved.
//

#import "DJWeatherModel.h"

@implementation DJWeatherModel

+ (RKObjectMapping *)responseMapping
{
    [NSException raise:@"No response mapping" format:@"response mapping not configured for class: %@", NSStringFromClass([self class])];
    return nil;
}

+ (RKResponseDescriptor *)responseDescriptor
{
    [NSException raise:@"No response descriptor" format:@"response descriptor not configured for class: %@", NSStringFromClass([self class])];
    return nil;
}

@end
