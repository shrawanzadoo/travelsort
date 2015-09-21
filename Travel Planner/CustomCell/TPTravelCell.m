//
//  TPTravelCell.m
//  Travel Planner
//
//  Created by Pooja Gulabani on 17/09/2015.
//  Copyright (c) 2015 demo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TPTravelCell.h"

@interface TPTravelCell ()

@end

@implementation TPTravelCell

-(void)setRecord:(TPRecord *)record{
    NSString *type = record.type;
    if([type isEqualToString:@"flight"]){
        _imageCellBackground.image = [UIImage imageNamed:@"flight"];
    }else if([record.type isEqualToString:@"train"]){
        _imageCellBackground.image = [UIImage imageNamed:@"train"];
    }else{
        _imageCellBackground.image = [UIImage imageNamed:@"bus"];
    }
    
    _labelSource.text = [NSString stringWithFormat:@"%@ (%@)",record.source,record.airportName_source];
    _labelSourceDetails.text = [NSString stringWithFormat:@"%@ number : %@ terminal : %@ gate number : %@ seat number : %@",type, record.flight_bus_train_number,record.terminal_platform_number_source, record.gateNumber, record.seatNumber];
    _labelDestination.text = record.destination;
    _labelDestinationDetail.text = record.airportName_destination;
    
    _labelComment.text = record.additionalComment;
}

@end
