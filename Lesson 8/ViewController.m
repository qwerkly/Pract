//
//  ViewController.m
//  Lesson 8
//
//  Created by Ivan on 23.04.15.
//
//

#import "ViewController.h"

@interface ViewController ()

@property(nonatomic,strong) NSArray * arrayValue;
@property(nonatomic,strong) NSArray * arrayPrice;
@property(nonatomic,strong) NSMutableArray * arrayM;

- (IBAction)back_Button:(id)sender;
- (IBAction)button_First:(id)sender;
- (IBAction)button_Second:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.arrayM = [NSMutableArray array];
    if (self.isFirstArray) {
        [self audi_Method];
    }
    else
        [self mercedes_Method];
}

-(void) audi_Method {
    self.isFirstArray = YES;
    [self.arrayM removeAllObjects];
    self.arrayM = [IBMakeArrays makeAudi_Method];
}


-(void) mercedes_Method {
    self.isFirstArray = NO;
    [self.arrayM removeAllObjects];
    self.arrayM = [IBMakeArrays makeMercedes_Method];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - UITableViewDelegate 

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.arrayM.count;
} 

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * simpleTableIdintifiter = @"Cell";
    IBCustomTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdintifiter];
    UIImage * image = [UIImage imageNamed:[NSString stringWithFormat:@"%@.jpg",[[self.arrayM objectAtIndex:indexPath.row]objectForKey:@"value"]]];
    
    if (self.isFirstArray) {
        cell.customLabel_Price.text = [[self.arrayM objectAtIndex:indexPath.row]objectForKey:@"price"];
        cell.customLabel_Value.text = [[self.arrayM objectAtIndex:indexPath.row]objectForKey:@"value"];
        cell.custom_ImageView.image = image;
        [Animation change_CheckBox:self.tableView Color:[UIColor whiteColor]];
        [Animation change_CheckBox:cell.viewCells Color:[UIColor whiteColor]];
        cell.customLabel_Price.textColor = [UIColor blackColor];
        cell.customLabel_Value.textColor = [UIColor blackColor];
        cell.customLabel_Price.shadowColor = [UIColor lightGrayColor];
        cell.customLabel_Price.shadowOffset = CGSizeMake(-7, -7);
        cell.customLabel_Value.shadowColor = [UIColor lightGrayColor];
        cell.customLabel_Value.shadowOffset = CGSizeMake(-7, -7);
    }
    else {
        cell.customLabel_Price.text = [[self.arrayM objectAtIndex:indexPath.row]objectForKey:@"price"];
        cell.customLabel_Value.text = [[self.arrayM objectAtIndex:indexPath.row]objectForKey:@"value"];
        cell.custom_ImageView.image = image;
        [Animation change_CheckBox:self.tableView Color:[UIColor blackColor]];
        [Animation change_CheckBox:cell.viewCells Color:[UIColor blackColor]];
        cell.customLabel_Price.textColor = [UIColor whiteColor];
        cell.customLabel_Value.textColor = [UIColor whiteColor];
    }
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    IBDetailViewController * detal = [self.storyboard instantiateViewControllerWithIdentifier:@"Detail"];
    detal.string_Value = [[self.arrayM objectAtIndex:indexPath.row]objectForKey:@"value"];
    detal.string_Price = [[self.arrayM objectAtIndex:indexPath.row]objectForKey:@"price"];
    detal.string_Discr = [[self.arrayM objectAtIndex:indexPath.row]objectForKey:@"discr"];
    
    [self.navigationController pushViewController:detal animated:YES];
}

-(void) reloadTableView {
    dispatch_async(dispatch_get_main_queue(), ^{
        if (self.isFirstButton)
            [self.tableView reloadSections:[NSIndexSet indexSetWithIndex:0] withRowAnimation:UITableViewRowAnimationBottom];
        else
            [self.tableView reloadSections:[NSIndexSet indexSetWithIndex:0] withRowAnimation:UITableViewRowAnimationTop];
    });
}

- (IBAction)back_Button:(id)sender {
     [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)button_First:(id)sender {
    self.isFirstButton = YES;
    [self audi_Method];
    [self reloadTableView];
}

- (IBAction)button_Second:(id)sender {
    self.isFirstButton = NO;
    [self mercedes_Method];
    [self reloadTableView];
}

@end
