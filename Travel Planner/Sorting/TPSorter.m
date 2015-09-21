//
//  TPSorter.m
//  Travel Planner
//
//  Created by Pooja Gulabani on 21/09/2015.
//  Copyright © 2015 demo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TPSorter.h"

@interface TPSorter ()

@end

@implementation TPSorter

NSMutableArray *tempArray;
BOOL isSourceFound, isDestinationFound;

-(NSMutableArray *) sortRecords{
    isSourceFound = isDestinationFound = false;
    tempArray = [[NSMutableArray alloc] init];
    TPRecord *record;
    for(int i = 0; i < _records.count; i++){
        
        record = _records[i];
        [self findIfSourceOrDestination:record forIndex:i];
        if(record.isSource && !isDestinationFound && !isSourceFound ){
            isSourceFound = true;
            [tempArray insertObject:record atIndex:0];
        }
        if(record.isDestination && !isDestinationFound && !isSourceFound){
            isDestinationFound = true;
            [tempArray insertObject:record atIndex:(_records.count-1)];
        }
        if(isSourceFound || isDestinationFound){
            [_records removeObject:record];
            break; // if either is found break the loop. record will have either the source or destination
        }
    }
    
    if(record.isSource){
        [self findNextForSource:record];
    }else{
        [self findPreviousForDestination:record];
    }
    _records = tempArray;
    return _records;
}

-(void) findNextForSource:(TPRecord *)record{
    TPRecord *nextRecord;
    for (int i = 0; i < _records.count; i++) {
        nextRecord = _records[i];
        if([record.destination isEqual:nextRecord.source]){
            [tempArray addObject:nextRecord];
            [_records removeObject:nextRecord];
            break;
        }
    }
    if(_records.count > 0){
        [self findNextForSource:nextRecord];
    }
}

-(void) findPreviousForDestination:(TPRecord *)record{
    TPRecord *nextRecord;
    int count = (int)_records.count-1;
    for (int i = count; i >= 0 ; i--) {
        nextRecord = _records[i];
        if([record.source isEqual:nextRecord.destination]){
            [tempArray insertObject:nextRecord atIndex:count];
            [_records removeObject:nextRecord];
            break;
        }
    }
    if(_records.count > 0){
        [self findPreviousForDestination:nextRecord];
    }
}

-(void) findIfSourceOrDestination: (TPRecord *)record forIndex:(int)i{
    for (int j = 0; j < _records.count; j++) {
        if(j != i){
            TPRecord *recordToCompare = _records[j];
            
            if([record.source isEqualToString:recordToCompare.destination]){
                record.isSource = false;
            }
            else if([record.destination isEqualToString:recordToCompare.source]){
                record.isDestination = false;
            }
        }
    }
}

@end