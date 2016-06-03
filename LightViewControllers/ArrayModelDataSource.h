
@import UIKit;
#import <Foundation/Foundation.h>

typedef void (^TableViewCellConfigBlock) (id cell, id item);

@interface ArrayModelDataSource : NSObject <UITableViewDataSource>

- (id) initWithItems:(NSArray *)theItems
      cellIdentifier:(NSString *)anIdentifier
  configureCellBlock:(TableViewCellConfigBlock)aConfigCellBlock;

- (id)itemAtIndexPath:(NSIndexPath *)indexPath;


@end
