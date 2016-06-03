//
//  TableViewCellForFakeEntity.h
//  LightViewControllers
//
//  Created by Juan Antonio Martin Noguera on 01/03/16.
//  Copyright © 2016 Cloud On Mobile S.L. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FakeSomeEntity.h"

@interface TableViewCellForFakeEntity : UITableViewCell


@property (weak, nonatomic) IBOutlet UILabel *fakeName;
@property (weak, nonatomic) IBOutlet UIImageView *imageViewFake;

+ (UINib*) nib;

- (void)syncronizeFakeModel:(FakeSomeEntity *)item;

@end
