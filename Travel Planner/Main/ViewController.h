//
//  ViewController.h
//  Travel Planner
//
//  Created by Pooja Gulabani on 16/09/2015.
//  Copyright (c) 2015 demo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TPTravelCell.h"
#import "TPRecord.h"
#import "TPSorter.h"

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) NSMutableArray *records;
@property (strong, nonatomic) TPSorter *sorter;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIButton *btnSort;
- (IBAction)sortBtnPressed:(id)sender;

@end

