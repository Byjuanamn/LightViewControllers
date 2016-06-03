//
//  ArrayModelDataSourceTEst.m
//  LightViewControllers
//
//  Created by Juan Antonio Martin Noguera on 01/03/16.
//  Copyright © 2016 Cloud On Mobile S.L. All rights reserved.
//

#import <XCTest/XCTest.h>

#define HC_SHORTHAND
#import <OCHamcrest/OCHamcrest.h>

#define MOCKITO_SHORTHAND
#import <OCMockito/OCMockito.h>


#import "ArrayModelDataSource.h"

@interface ArrayModelDataSourceTEst : XCTestCase
@end

@implementation ArrayModelDataSourceTEst



- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

/*
 
 Test sobre inicializadores
 
 */
- (void)testInitializing
{

    assertThat([[ArrayModelDataSource alloc]init], nilValue());

    ArrayModelDataSource * sut = [[ArrayModelDataSource alloc]initWithItems:@[@"Uno", @"Dos"] cellIdentifier:@"Identificador" configureCellBlock:^(id cell, id item) {}];
    
    assertThat(sut, notNilValue());
    
}


/*
 
 fixture sobre numero de rows
 
 */

- (void)testNumberOfRows {
    
    
    
    UITableView * tableViewMock = mock([UITableView class]);
    
    ArrayModelDataSource * sut = [[ArrayModelDataSource alloc]initWithItems:@[@"Uno", @"Dos"] cellIdentifier:@"Identificador" configureCellBlock:^(id cell, id item) { }];
    assertThatInteger([sut tableView:tableViewMock numberOfRowsInSection:0], equalToInteger(2));

    
}


/*
 
 fiture sobre la celda
 
 */


- (void)testConfigCell {
    
    __block UITableViewCell * configureCell = nil;
    __block id configObject = nil;
    
    TableViewCellConfigBlock block = ^(UITableViewCell *cell, id objectResult){
        configureCell = cell;
        configObject = objectResult;
    };
    
    // mock del tableview
    
    UITableView *tableView = mock([UITableView class]);
    
    // creamos nuestro system under test object
    
    ArrayModelDataSource * sut = [[ArrayModelDataSource alloc]initWithItems:@[@"Uno", @"Dos"] cellIdentifier:@"Identificador" configureCellBlock:block];
    
    tableView.dataSource = sut;
    
    UITableViewCell * celda = [[UITableViewCell alloc]init];
    
    [given([tableView dequeueReusableCellWithIdentifier:@"Identificador"
                                           forIndexPath:[NSIndexPath indexPathForRow:0
                                                                           inSection:0]])
     willReturn:celda];
    
    [tableView dequeueReusableCellWithIdentifier:@"Identificador"
                                    forIndexPath:[NSIndexPath indexPathForRow:0
                                                                    inSection:0]];
    
    id result = [sut tableView:tableView
         cellForRowAtIndexPath:[NSIndexPath indexPathForRow:0
                                                  inSection:0]];
    
    assertThat(result, equalTo(celda));
    assertThat(configureCell, equalTo(celda));
    assertThat(configObject, equalTo(@"Uno"));

    
    
}



@end
