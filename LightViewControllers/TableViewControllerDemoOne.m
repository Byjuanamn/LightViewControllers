//
//  TableViewControllerDemoOne.m
//  LightViewControllers
//
//  Created by Juan Antonio Martin Noguera on 29/02/16.
//  Copyright © 2016 Cloud On Mobile S.L. All rights reserved.
//

#import "TableViewControllerDemoOne.h"

#import "ArrayModelDataSource.h"
#import "PlainCell.h"
#import "SimpleCellTableViewCell.h"


static NSString * const kCellIdentifier = @"CELLDEMOONE";

@interface TableViewControllerDemoOne ()

@property (nonatomic, strong) ArrayModelDataSource *modelArrayDataSource;

@end

@implementation TableViewControllerDemoOne

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    self.title = @"Demo con celda simple";
    
    [self setupTableView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

#pragma mark - Table view data source DEPRECATED - ahora usamos nuestro propio dataource

- (void) setupTableView{

    
    TableViewCellConfigBlock configureCell = ^(id cell, NSString *postText){
      
        if ([postText isEqualToString:@"dos"]) {
            PlainCell * cellOne = (PlainCell*)cell;
            [cellOne syncronizeCell:postText];
        } else {
            SimpleCellTableViewCell * cellTwo = (SimpleCellTableViewCell*) cell;
            [cellTwo syncronizeCell:postText];
        }
        
        
    };
    
    self.modelArrayDataSource = [[ArrayModelDataSource alloc]initWithItems:@[@"Uno", @"Dos", @"Tres"]
                                                            cellIdentifier:@"SIMPLECELL"
                                                        configureCellBlock:configureCell];
    self.tableView.dataSource = self.modelArrayDataSource;
    
    // registrar Celda
//    [self.tableView registerNib:[PlainCell nib]
//         forCellReuseIdentifier:kCellIdentifier];
    [self.tableView registerNib:[SimpleCellTableViewCell nib] forCellReuseIdentifier:@"SIMPLECELL"];
    
    

}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
