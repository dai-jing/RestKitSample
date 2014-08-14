//
//  ViewController.m
//  RestKitSample
//
//  Created by Jing Dai on 8/11/14.
//  Copyright (c) 2014 Jing Dai. All rights reserved.
//

#import "ViewController.h"
#import "DJOpenWeather.h"
#import "DJAPIClient.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    DJOpenWeather *weather = [DJOpenWeather new];
    [[DJAPIClient sharedInstance] requestPath:@"/data/2.5/weather"
                                    withModel:weather
                                       params:@{@"lat" : [NSString stringWithFormat:@"%f", 37.3894], @"lon" : [NSString stringWithFormat:@"%f", -122.0819], @"units" : @"metric"}
                                      success:^(id response) {
                                          if (response != nil && [response isKindOfClass:[NSArray class]]) {
                                              DJWeather *w = [response count] >= 1 ? response[0] : nil;
                                              NSLog(@"weather description: %@", [w description]);
                                          }
                                      }
                                      failure:^(NSError *error) {
                                          NSLog(@"error: %@", error);
                                      }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
