//
//  HDWebBrowserViewController.h
//  HarborDev
//
//  Created by HarborDev on 2/5/13.
//  Copyright (c) 2013 HarborDev. All rights reserved.
//

#import "HDWebBrowserViewController.h"

@interface HDWebBrowserViewController ()

@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *spinner;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *backBtn;
@property (weak, nonatomic) IBOutlet UINavigationBar *navBar;
@property (weak, nonatomic) IBOutlet UINavigationItem *navTitle;
@property (weak, nonatomic) IBOutlet UIView *spacerView;

@property (strong, nonatomic) IBOutletCollection(UIBarButtonItem) NSArray *navItems;


@property(strong, nonatomic) NSMutableArray *history;

-(IBAction)close:(id)sender;

@end

@implementation HDWebBrowserViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {

    }
    return self;
}

- (void)viewDidLoad{
    
    NSParameterAssert(self.navigationBarColor);
    NSParameterAssert(self.navigationTitleColor);
    NSParameterAssert(self.navigationItemsColor);
    NSParameterAssert(self.browswerTitle);
    NSParameterAssert(self.url);
    
    self.navTitle.title = self.browswerTitle;
    
    self.navBar.translucent = YES;
    
    self.navBar.barTintColor = self.navigationBarColor;
    self.navigationController.navigationBar.barTintColor = self.navigationBarColor;

    self.spacerView.backgroundColor = self.navigationBarColor;
    self.navBar.titleTextAttributes = @{NSForegroundColorAttributeName: self.navigationTitleColor};
    
    for (UIBarButtonItem *aBtn in self.navItems) {
        aBtn.tintColor = self.navigationItemsColor;
    }
    
}

-(void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    
    [self.spinner startAnimating];
    
    if([self respondsToSelector:@selector(edgesForExtendedLayout)])
        [self setEdgesForExtendedLayout:UIRectEdgeNone];
}

-(void)viewDidAppear:(BOOL)animated{

    NSURLRequest *request = [NSURLRequest requestWithURL:self.url];

    [self.webView loadRequest:request];

}

-(void)viewWillDisappear:(BOOL)animated{
    
    [super viewWillDisappear:animated];
    
    [self.webView stopLoading];
    [self.spinner stopAnimating];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - webview delegate
-(void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
    
    NSLog(@"%@", error.localizedDescription);
    
}

-(void)webViewDidFinishLoad:(UIWebView *)webView{
    
    [self.spinner stopAnimating];
    [self.backBtn setEnabled:[self.webView canGoBack]];
    
}

-(void)webViewDidStartLoad:(UIWebView *)webView{
    
    [self.spinner startAnimating];
    
}

-(IBAction)close:(id)sender{

    [self dismissViewControllerAnimated:YES completion:nil];

}

- (void)viewDidUnload {
    [self setBackBtn:nil];
    [super viewDidUnload];
}

- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation{

    //self.webView.frame = self.view.bounds;

}

@end
