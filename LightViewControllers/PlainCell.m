
#import "PlainCell.h"

@implementation PlainCell


+ (UINib *)nib{
    return [UINib nibWithNibName:@"PlainCell" bundle:nil];
}


- (void) syncronizeCell:(NSString *) text{
    self.captionLabel.text = text;
}

@end
