//
//  SimpleCellTableViewCell.m
//  LightViewControllers
//
//  Created by Juan Antonio Martin Noguera on 20/04/16.
//  Copyright © 2016 Cloud On Mobile S.L. All rights reserved.
//

#import "SimpleCellTableViewCell.h"

#define kWitdthCell 215

@implementation SimpleCellTableViewCell

+ (UINib *)nib{
    return [UINib nibWithNibName: @"SimpleCellTableViewCell" bundle:nil];
}

- (void) syncronizeCell:(NSString *) text{
    
    self.captionText.text = text;
    
}
- (IBAction)chageWithLabel:(id)sender {
    
//    CGFloat width = self.withProgressConstrain.constant;
    
    UISwitch * sw = (UISwitch *)sender;
    
    if (sw.on) {
        self.withProgressConstrain.constant = kWitdthCell;
    } else {
        self.withProgressConstrain.constant = (50*kWitdthCell)/100;
    }
    
    
    
}

@end
