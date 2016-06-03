//
//  FakeSomeEntity.h
//  LightViewControllers
//
//  Created by Juan Antonio Martin Noguera on 01/03/16.
//  Copyright © 2016 Cloud On Mobile S.L. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FakeSomeEntity : NSObject

@property (nonatomic, strong) NSData * imageFake;
@property (nonatomic, strong) NSString *nameFake;

- (id) initWithImageFake:(NSData *)img withFakeName:(NSString *) fakeName;


@end
