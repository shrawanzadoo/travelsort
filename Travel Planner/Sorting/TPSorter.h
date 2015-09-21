//
//  TPSorter.h
//  Travel Planner
//
//  Created by Pooja Gulabani on 21/09/2015.
//  Copyright © 2015 demo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TPRecord.h"

@interface TPSorter : NSObject

@property (strong, nonatomic) NSMutableArray *records;

-(NSMutableArray *) sortRecords;

@end
