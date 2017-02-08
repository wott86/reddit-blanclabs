//
//  EntryTableViewCell.h
//  Reddit
//
//  Created by Cesar Vilera on 2/7/17.
//  Copyright © 2017 Cesar Vilera. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EntryTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *thumbnailImage;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *authorLabel;
@end
