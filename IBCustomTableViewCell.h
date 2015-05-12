//
//  IBCustomTableViewCell.h
//  Lesson 8
//
//  Created by Ivan Babich on 30.04.15.
//
//

#import <UIKit/UIKit.h>

@interface IBCustomTableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UIImageView *custom_ImageView;

@property (strong, nonatomic) IBOutlet UILabel *customLabel_Value;

@property (strong, nonatomic) IBOutlet UILabel *customLabel_Price;

@property (strong, nonatomic) IBOutlet UIView *viewCells;

@end
