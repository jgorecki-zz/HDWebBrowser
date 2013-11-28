//
//  HDWebBrowserViewController.h
//  HarborDev
//
//  Created by HarborDev on 2/5/13.
//  Copyright (c) 2013 HarborDev. All rights reserved.
//

@interface HDWebBrowserViewController : UIViewController <UIWebViewDelegate>

@property(strong, nonatomic) UIColor *navigationBarColor;
@property(strong, nonatomic) UIColor *navigationTitleColor;
@property(strong, nonatomic) UIColor *navigationItemsColor;
@property(strong, nonatomic) NSString *browswerTitle;
@property(strong, nonatomic) NSURL *url;

@end
