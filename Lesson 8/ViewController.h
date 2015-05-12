//
//  ViewController.h
//  Lesson 8
//
//  Created by Ivan on 23.04.15.
//
//

#import <UIKit/UIKit.h>
#import "Animation.h"
#import "IBDetailViewController.h"
#import "IBCustomTableViewCell.h"
#import "IBMakeArrays.h"

@interface ViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,assign) BOOL isFirstArray;
@property (nonatomic,strong) IBOutlet UITableView *tableView;
@property(nonatomic,assign) BOOL isFirstButton;

@end

