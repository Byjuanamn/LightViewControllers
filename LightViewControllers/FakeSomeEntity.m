//
//  FakeSomeEntity.m
//  LightViewControllers
//
//  Created by Juan Antonio Martin Noguera on 01/03/16.
//  Copyright © 2016 Cloud On Mobile S.L. All rights reserved.
//

#import "FakeSomeEntity.h"

@implementation FakeSomeEntity


- (id) initWithImageFake:(NSData *)img withFakeName:(NSString *)fakeName{
    
    if (self = [super init])
    {
        self.imageFake = img;
        self.nameFake = fakeName;
    }
    
    return self;
}

@end
