//
//  ViewController.m
//  android
//
//  Created by Feby Varghese on 7/12/12.
//  Copyright (c) 2012 febycv. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "version.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.title = @ "Android Version History";
    AppDelegate *delegate = (AppDelegate *)[[UIApplication sharedApplication]delegate];
    versions = delegate.versions;
}

#pragma mark - Table View data Source

-(NSInteger)numberOfSectionsInTableView : (UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [versions count];
    
}

-(UITableViewCell *)tableView: (UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier]autorelease];
    }
    version *thisversion = [versions objectAtIndex:indexPath.row];
    cell.textLabel.text = thisversion.versionname;
    cell.imageView.image=[UIImage imageNamed:@"androidApps.png"];
    cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
    return cell;
}

-(void)tableView: (UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    version *thisversion = [versions objectAtIndex:indexPath.row];
    UIAlertView *popup = [[UIAlertView alloc]initWithTitle:thisversion.versionname message:thisversion.versiondetail delegate:nil cancelButtonTitle:@"ok" otherButtonTitles : nil];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [popup show];
    [popup release];
    
}

-(void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath
{
    version *thisversion = [versions objectAtIndex:indexPath.row];
    UIAlertView *popup = [[UIAlertView alloc]initWithTitle:thisversion.versionname message:thisversion.versiondetail delegate:nil cancelButtonTitle:@"ok" otherButtonTitles : nil];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [popup show];
    [popup release];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
