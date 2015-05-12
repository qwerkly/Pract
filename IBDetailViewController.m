//
//  IBDetailViewController.m
//  Lesson 8
//
//  Created by Ivan Babich on 27.04.15.
//
//

#import "IBDetailViewController.h"

@interface IBDetailViewController ()

@end

@implementation IBDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.label_Value.text = self.string_Value;
    self.label_Price.text = [NSString stringWithFormat:@"Цена - %@",self.string_Price];
    self.textView_Discr.text = self.string_Discr;
    
    UIImage * image = [UIImage imageNamed:[NSString stringWithFormat:@"%@.jpg",self.string_Value]];
    self.imageView_Detail.image = image;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)back_Button:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
