

#import "ArrayModelDataSource.h"

@interface ArrayModelDataSource ()

@property (strong, nonatomic) NSArray * items;
@property (copy, nonatomic) NSString * cellIndetifier;
@property (copy, nonatomic) TableViewCellConfigBlock configCellBlock;

@end


@implementation ArrayModelDataSource


-(id) init{
    return nil;
}

- (id) initWithItems:(NSArray *)theItems
      cellIdentifier:(NSString *)anIdentifier
  configureCellBlock:(TableViewCellConfigBlock)aConfigCellBlock{
    
    self = [super init];
    if (self) {
        self.items = theItems;
        self.cellIndetifier = anIdentifier;
        self.configCellBlock = [aConfigCellBlock copy];
        
    }
    return self;
}


// MARK: - Object por indice

-(id)itemAtIndexPath:(NSIndexPath *)indexPath{
    return self.items[(NSInteger)indexPath.row];
}


// MARK: - Numero de objetos por serción
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.items.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    id cell = [tableView dequeueReusableCellWithIdentifier:self.cellIndetifier
                                                             forIndexPath:indexPath];
    
    id item = [self itemAtIndexPath:indexPath];
    
    self.configCellBlock(cell, item);
    
    return cell;
}

@end
