//
//  TPRecord.m
//  Travel Planner
//
//  Created by Pooja Gulabani on 17/09/2015.
//  Copyright (c) 2015 demo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TPRecord.h"

@interface TPRecord ()

@end

@implementation TPRecord

-(TPRecord*)init{
    self.isSource = true;
    self.isDestination = true;
    return self;
}

+(NSMutableArray *)createRecords{
    NSMutableArray *recordsArray = [[NSMutableArray alloc] init];
    
    TPRecord *record = [[TPRecord alloc] init];
    record.type = @"flight";
    record.source = @"London";
    record.airportName_source = @"LHR";
    record.terminal_platform_number_source = @"T-1";
    record.flight_bus_train_number = @"BA1187";
    record.gateNumber = @"F-29";
    record.seatNumber = @"14 A";
    record.destination = @"Stockholm";
    record.airportName_destination = @"Arlanda";
    record.additionalComment = @"Pickup baggade from belt 5 and process to the Arlanda express";
    [recordsArray addObject:record];
    
    record = [[TPRecord alloc] init];
    record.type = @"bus";
    record.source = @"Madrid";
    record.airportName_source = @"MDR";
    record.terminal_platform_number_source = @"T-1";
    record.flight_bus_train_number = @"BA1187";
    record.gateNumber = @"F-29";
    record.seatNumber = @"14 A";
    record.destination = @"Valencia";
    record.airportName_destination = @"VLC";
    record.additionalComment = @"Pickup baggade from belt 5 and process to the Arlanda express";
    [recordsArray addObject:record];
    
    record = [[TPRecord alloc] init];
    record.type = @"flight";
    record.source = @"Barcelona";
    record.airportName_source = @"BCL";
    record.terminal_platform_number_source = @"T-1";
    record.flight_bus_train_number = @"BA1187";
    record.gateNumber = @"F-29";
    record.seatNumber = @"14 A";
    record.destination = @"Madrid";
    record.airportName_destination = @"MDR";
    record.additionalComment = @"Pickup baggade from belt 5 and process to the Arlanda express";
    [recordsArray addObject:record];
    
    record = [[TPRecord alloc] init];
    record.type = @"train";
    record.source = @"Belgium";
    record.airportName_source = @"BGM";
    record.terminal_platform_number_source = @"T-1";
    record.flight_bus_train_number = @"BA1187";
    record.gateNumber = @"F-29";
    record.seatNumber = @"14 A";
    record.destination = @"Barcelona";
    record.airportName_destination = @"BCL";
    record.additionalComment = @"Pickup baggade from belt 5 and process to the Arlanda express";
    [recordsArray addObject:record];
    
    record = [[TPRecord alloc] init];
    record.type = @"train";
    record.source = @"Valencia";
    record.airportName_source = @"MDR";
    record.terminal_platform_number_source = @"T-1";
    record.flight_bus_train_number = @"BA1187";
    record.gateNumber = @"F-29";
    record.seatNumber = @"14 A";
    record.destination = @"France";
    record.airportName_destination = @"VLC";
    record.additionalComment = @"Pickup baggade from belt 5 and process to the Arlanda express";
    [recordsArray addObject:record];
    
    record = [[TPRecord alloc] init];
    record.type = @"train";
    record.source = @"Stockholm";
    record.airportName_source = @"Arlanda";
    record.terminal_platform_number_source = @"T-1";
    record.flight_bus_train_number = @"BA1187";
    record.gateNumber = @"F-29";
    record.seatNumber = @"14 A";
    record.destination = @"Belgium";
    record.airportName_destination = @"Arlanda";
    record.additionalComment = @"Pickup baggade from belt 5 and process to the Arlanda express";
    [recordsArray addObject:record];
    
    return recordsArray;
}

@end