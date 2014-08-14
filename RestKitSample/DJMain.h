//
//  DJMain.h
//  RestKitSample
//
//  Created by Jing Dai on 8/11/14.
//  Copyright (c) 2014 Jing Dai. All rights reserved.
//

#import "DJWeatherModel.h"

@interface DJMain : DJWeatherModel

@property (nonatomic, assign) float currentTemp;
@property (nonatomic, assign) float minTemp;
@property (nonatomic, assign) float maxTemp;

@end
