//
//  ViewController.h
//  android
//
//  Created by Feby Varghese on 7/12/12.
//  Copyright (c) 2012 febycv. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
{
    NSMutableArray *versions;
}

@property (nonatomic, retain) IBOutlet UITableView *tableview;

@end
