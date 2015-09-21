//
//  TPTravelCell.h
//  Travel Planner
//
//  Created by Pooja Gulabani on 17/09/2015.
//  Copyright (c) 2015 demo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TPRecord.h"

@interface TPTravelCell : UITableViewCell

@property (strong, nonatomic) TPRecord *record;

@property (weak, nonatomic) IBOutlet UIImageView *imageCellBackground;
@property (weak, nonatomic) IBOutlet UILabel *labelSource;
@property (weak, nonatomic) IBOutlet UILabel *labelDestination;
@property (weak, nonatomic) IBOutlet UILabel *labelSourceDetails;
@property (weak, nonatomic) IBOutlet UILabel *labelDestinationDetail;
@property (weak, nonatomic) IBOutlet UILabel *labelComment;

@end
