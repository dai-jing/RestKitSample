//
//  DJAPIClient.m
//  RestKitSample
//
//  Created by Jing Dai on 8/13/14.
//  Copyright (c) 2014 Jing Dai. All rights reserved.
//

#import "DJAPIClient.h"
#import "DJWeatherModel.h"
#import <RestKit/RestKit.h>

static NSString *kWeatherBaseUrl = @"http://api.openweathermap.org";

@implementation DJAPIClient

- (id)init
{
    if (self = [super init]) {
        AFHTTPClient *client = [[AFHTTPClient alloc] initWithBaseURL:[NSURL URLWithString:kWeatherBaseUrl]];
        RKObjectManager *manager = [[RKObjectManager alloc] initWithHTTPClient:client];
        [RKObjectManager setSharedManager:manager];
    }
    
    return self;
}

+ (DJAPIClient *)sharedInstance
{
    static DJAPIClient *client = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[DJAPIClient alloc] init];
    });
    
    return client;
}

#pragma mark - request

- (void)requestPath:(NSString *)path withModel:(id)model params:(id)params success:(DJAPISuccessBlock)successCallback failure:(DJAPIFailureBlock)errorCallback
{
    __block DJAPISuccessBlock successBlock = successCallback;
    __block DJAPIFailureBlock errorBlock = errorCallback;
    
    [self configureModel:[model class]];
    
    [[RKObjectManager sharedManager] getObjectsAtPath:path
                                           parameters:params
                                              success:^(RKObjectRequestOperation *operation, RKMappingResult *mappingResult) {
                                                  if (successBlock) {
                                                      dispatch_async(dispatch_get_main_queue(), ^{
                                                          NSArray *results = [mappingResult array];
                                                          successBlock(results);
                                                      });
                                                  }
                                              } failure:^(RKObjectRequestOperation *operation, NSError *error) {
                                                  if (errorBlock) {
                                                      errorBlock(error);
                                                  }
                                              }];
}

#pragma mark - private methods

- (void)configureModel:(Class)Model
{
    RKObjectManager *sharedMgr = [RKObjectManager sharedManager];
    
    [sharedMgr addResponseDescriptor:[Model responseDescriptor]];
}

@end
