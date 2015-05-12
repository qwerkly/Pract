//
//  IBDetailViewController.h
//  Lesson 8
//
//  Created by Ivan Babich on 27.04.15.
//
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface IBDetailViewController : UIViewController

@property (strong, nonatomic) IBOutlet NSString *string_Value;

@property (strong, nonatomic) IBOutlet NSString *string_Price;

@property (strong, nonatomic) IBOutlet NSString *string_Discr;

@property (strong, nonatomic) IBOutlet UILabel *label_Value;

@property (strong, nonatomic) IBOutlet UILabel *label_Price;

@property (strong, nonatomic) IBOutlet UITextView *textView_Discr;

@property (strong, nonatomic) IBOutlet UIImageView *imageView_Detail;

- (IBAction)back_Button:(id)sender;

@end
