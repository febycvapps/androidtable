//
//  AppDelegate.h
//  android
//
//  Created by Feby Varghese on 7/12/12.
//  Copyright (c) 2012 febycv. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    UINavigationController *navigation;
}

@property (nonatomic,strong)NSMutableArray *versions;

@property(nonatomic,retain)UINavigationController *navigation;

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;

@end
