//
//  HDRootViewController.m
//  HDWebBrowser
//
//  Created by Joseph Gorecki on 11/8/13.
//  Copyright (c) 2013 Joseph Gorecki. All rights reserved.
//

#import "HDRootViewController.h"
#import "HDWebBrowserViewController.h"

@interface HDRootViewController ()

- (IBAction)testing:(id)sender;

@end

@implementation HDRootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Browser";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)testing:(id)sender {
    
    HDWebBrowserViewController *webBrowser = [HDWebBrowserViewController new];
    
    webBrowser.url = [NSURL URLWithString:@"http://www.google.com"];
    webBrowser.browswerTitle = @"HarborDev";
    webBrowser.navigationTitleColor = [UIColor whiteColor];
    webBrowser.navigationBarColor = [UIColor blackColor];
    webBrowser.navigationItemsColor = [UIColor redColor];
    
    [self presentViewController:webBrowser animated:YES completion:nil];
    
}
@end
