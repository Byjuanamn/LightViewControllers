//
//  PlainCell.h
//  LightViewControllers
//
//  Created by Juan Antonio Martin Noguera on 01/03/16.
//  Copyright © 2016 Cloud On Mobile S.L. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlainCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *captionLabel;

+ (UINib *)nib;

- (void) syncronizeCell:(NSString *) text;
@end
