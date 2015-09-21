//
//  TPRecord.h
//  Travel Planner
//
//  Created by Pooja Gulabani on 17/09/2015.
//  Copyright (c) 2015 demo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TPRecord : NSObject

@property (assign, nonatomic) bool isSource;
@property (assign, nonatomic) bool isDestination;

@property (weak, nonatomic) NSString *type;

@property (weak, nonatomic) NSString *source;
@property (weak, nonatomic) NSString *terminal_platform_number_source;
@property (weak, nonatomic) NSString *airportName_source;


@property (weak, nonatomic) NSString *destination;
@property (weak, nonatomic) NSString *airportName_destination;
@property (weak, nonatomic) NSString *terminal_platform_number_destination;

@property (weak, nonatomic) NSString *flight_bus_train_number;
@property (weak, nonatomic) NSString *gateNumber;
@property (weak, nonatomic) NSString *seatNumber;
@property (weak, nonatomic) NSString *additionalComment;

+(NSMutableArray *)createRecords;

@end