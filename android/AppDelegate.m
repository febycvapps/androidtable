//
//  AppDelegate.m
//  android
//
//  Created by Feby Varghese on 7/12/12.
//  Copyright (c) 2012 febycv. All rights reserved.
//

#import "AppDelegate.h"

#import "ViewController.h"

#import "version.h"

@implementation AppDelegate

@synthesize window = _window;
@synthesize viewController = _viewController;
@synthesize versions = _versions;

- (void)dealloc
{
    [_window release];
    [_viewController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
   
    version *cupcake = [[version alloc]init];
    cupcake.versionname = @"Cupcake";
    cupcake.versiondetail = @"Android 1.5 was released on       April 30, 2009";
    
    version *donut = [[version alloc]init];
    donut.versionname = @"Donut";
    donut.versiondetail = @"Android 1.6 was released on September 15, 2009";
    
    version *eclair = [[version alloc]init];
    eclair.versionname = @"Eclair";
    eclair.versiondetail = @"Android 2.0 was released on October 26, 2009";
    self.versions = [[NSMutableArray alloc]initWithObjects:cupcake, nil];
    
    version *froyo = [[version alloc]init];
    froyo.versionname = @"Froyo";
    froyo.versiondetail = @"Android 2.2 was released on          May 20, 2010";
    
    version *gb = [[version alloc]init];
    gb.versionname = @"Gingerbread";
    gb.versiondetail = @"Android 2.3 was released on December 06, 2010";
    
    version *hc = [[version alloc]init];
    hc.versionname = @"Honeycomb";
    hc.versiondetail = @"Android 3.0 was released on February 22, 2011";
    
    version *ics = [[version alloc]init];
    ics.versionname = @"Ice Cream Sandwich";
    ics.versiondetail = @"Android 4.0 was released on October 19, 2011";
    
    version *jb = [[version alloc]init];
    jb.versionname = @"Jelly Bean";
    jb.versiondetail = @"Android 4.1 was released on           July 09, 2012";
    
    self.versions = [[NSMutableArray alloc]initWithObjects:cupcake, donut, eclair, froyo, gb, hc,ics, jb, nil ];
    
    self.viewController = [[[ViewController alloc] initWithNibName:@"ViewController" bundle:nil] autorelease];
    self.navigation = [[UINavigationController alloc]initWithRootViewController:self.viewController];
    self.window.rootViewController = self.navigation;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
