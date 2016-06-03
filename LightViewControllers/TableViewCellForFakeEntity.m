//
//  TableViewCellForFakeEntity.m
//  LightViewControllers
//
//  Created by Juan Antonio Martin Noguera on 01/03/16.
//  Copyright © 2016 Cloud On Mobile S.L. All rights reserved.
//

#import "TableViewCellForFakeEntity.h"

@implementation TableViewCellForFakeEntity

+(UINib *) nib{
    return [UINib nibWithNibName:NSStringFromClass([TableViewCellForFakeEntity class])  bundle:nil];
}

-(void)syncronizeFakeModel:(FakeSomeEntity *)item{
    self.fakeName.text = item.nameFake;
    self.imageViewFake.image = [UIImage imageWithData:item.imageFake];
}

@end
