//
//  tableViewController.m
//  demoOftable
//
//  Created by cloudZon Infosoft on 16/01/14.
//  Copyright (c) 2014 cloudZon Infosoft. All rights reserved.
//

#import "tableViewController.h"

@interface tableViewController ()

@end

@implementation tableViewController
@synthesize dataArray;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    float h=[dataArray count]*40;
    NSLog(@"array %@ height %f",dataArray,h);
    table=[[UITableView alloc]initWithFrame:CGRectMake(20, 150, 280, h) style:UITableViewStylePlain];
    table.dataSource=self;
    table.delegate=self;
    table.bounces=FALSE;
    table.backgroundColor=[UIColor redColor];

    [self.view addSubview:table];
    // Do any additional setup after loading the view from its nib.
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 40;
}
//- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
//    
//}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 0.01;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [dataArray count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    tableView.contentInset=UIEdgeInsetsZero;
    UITableViewCell *cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    cell.textLabel.text=[dataArray objectAtIndex:indexPath.row];
    cell.backgroundColor=[UIColor grayColor];
    return cell;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
