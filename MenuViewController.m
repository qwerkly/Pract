//
//  MenuViewController.m
//  Lesson 8
//
//  Created by Ivan Babich on 01.05.15.
//
//

#import "MenuViewController.h"


@interface MenuViewController ()

@end

@implementation MenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.audi_Button addTarget:self action:@selector(go_Audi) forControlEvents:
     UIControlEventTouchUpInside];
    [self.mercedes_Button addTarget:self action:@selector(go_Mercedes) forControlEvents:
     UIControlEventTouchUpInside];
    
}

-(void) go_Audi {
    ViewController * view = [self.storyboard instantiateViewControllerWithIdentifier:@"view"];
     view.isFirstArray = YES;
    
    if (view.isFirstArray) {
        [self.navigationController pushViewController:view animated:YES];
        
    }
}

-(void) go_Mercedes {
    ViewController * view = [self.storyboard instantiateViewControllerWithIdentifier:@"view"];
    view.isFirstArray = NO;
    
    [self.navigationController pushViewController:view animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


@end
