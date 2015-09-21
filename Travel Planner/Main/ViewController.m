//
//  ViewController.m
//  Travel Planner
//
//  Created by Pooja Gulabani on 16/09/2015.
//  Copyright (c) 2015 demo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark - Table Datasource

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _records.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TPTravelCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TravelCell" forIndexPath:indexPath];
    cell.record = [_records objectAtIndex:[indexPath row]];
    return cell;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self createRecords];
}

-(void) createRecords{
    _sorter = [[TPSorter alloc] init];
    _records = [[NSMutableArray alloc] init];
    _records =  [TPRecord createRecords];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sortBtnPressed:(id)sender {
    _sorter.records = _records;
    _records = [_sorter sortRecords];
    [_tableView reloadData];
}


@end
