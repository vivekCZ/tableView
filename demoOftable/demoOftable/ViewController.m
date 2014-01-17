//
//  ViewController.m
//  demoOftable
//
//  Created by cloudZon Infosoft on 16/01/14.
//  Copyright (c) 2014 cloudZon Infosoft. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize scroll;
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
    [scroll setContentSize:CGSizeMake(320,1000)];
    scroll.scrollEnabled=YES;
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)go:(id)sender {
    tableViewController *tc=[[tableViewController alloc]init];
    NSLog(@"bye bye");
    tc.dataArray=[[NSMutableArray alloc]init];
    [tc.dataArray addObject:@"Hello"];
    [tc.dataArray addObject:@"Hello"];
    [tc.dataArray addObject:@"Hello"];
    [tc.dataArray addObject:@"Hello"];
    NSLog(@"bye bye");
    [self.navigationController pushViewController:tc animated:YES];
}
@end
