//
//  DJOpenWeather.m
//  RestKitSample
//
//  Created by Jing Dai on 8/12/14.
//  Copyright (c) 2014 Jing Dai. All rights reserved.
//

#import "DJOpenWeather.h"

@implementation DJOpenWeather

+ (RKObjectMapping *)responseMapping
{
    RKObjectMapping *mapping = [[RKObjectMapping alloc] initWithClass:[self class]];
    [mapping addAttributeMappingsFromDictionary:@{@"name" : @"locationName"}];
    
    RKObjectMapping *mainMapping = [DJMain responseMapping];
    // fromKeyPath is the key of JSON data, toKeyPath is property of DJOpenWeather
    [mapping addPropertyMapping:[RKRelationshipMapping relationshipMappingFromKeyPath:@"main" toKeyPath:@"mainWeather" withMapping:mainMapping]];
    
    RKObjectMapping *weatherMapping = [DJWeather responseMapping];
    [mapping addPropertyMapping:[RKRelationshipMapping relationshipMappingFromKeyPath:@"weather" toKeyPath:@"weathers" withMapping:weatherMapping]];
    
    return mapping;
}

+ (RKResponseDescriptor *)responseDescriptor
{
    return [RKResponseDescriptor responseDescriptorWithMapping:[self responseMapping]
                                                        method:RKRequestMethodGET
                                                   pathPattern:@"/data/2.5/weather"
                                                       keyPath:nil
                                                   statusCodes:RKStatusCodeIndexSetForClass(RKStatusCodeClassSuccessful)];
}

- (NSString *)description
{
    return [NSString stringWithFormat: @"(location: %@) - (current temp: %f) - (max temp: %f) - (min temp: %f) - (description: %@)", self.locationName, self.mainWeather.currentTemp, self.mainWeather.maxTemp, self.mainWeather.minTemp, self.weathers[0]];
}

@end
