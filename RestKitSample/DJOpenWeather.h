//
//  DJOpenWeather.h
//  RestKitSample
//
//  Created by Jing Dai on 8/12/14.
//  Copyright (c) 2014 Jing Dai. All rights reserved.
//

#import "DJWeatherModel.h"
#import "DJMain.h"
#import "DJWeather.h"

@interface DJOpenWeather : DJWeatherModel

@property (nonatomic, strong) DJMain *mainWeather;
@property (nonatomic, strong) NSArray *weathers;
@property (nonatomic, strong) NSString *locationName;

@end
