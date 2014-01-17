//
//  tableViewController.h
//  demoOftable
//
//  Created by cloudZon Infosoft on 16/01/14.
//  Copyright (c) 2014 cloudZon Infosoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface tableViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>{
    UITableView *table;
}
@property(nonatomic,strong) NSMutableArray *dataArray;
@end
