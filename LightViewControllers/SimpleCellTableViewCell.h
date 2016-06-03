//
//  SimpleCellTableViewCell.h
//  LightViewControllers
//
//  Created by Juan Antonio Martin Noguera on 20/04/16.
//  Copyright © 2016 Cloud On Mobile S.L. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimpleCellTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *withProgressConstrain;


@property (weak, nonatomic) IBOutlet UILabel *captionText;
+ (UINib *)nib;

- (void) syncronizeCell:(NSString *) text;

@end
