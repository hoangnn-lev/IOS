//
//  WebView.h
//  hoang
//
//  Created by Nguyen Hoang on 12/18/13.
//  Copyright (c) 2013 Nguyen Hoang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebView : UIViewController

@property (weak, nonatomic) IBOutlet UIWebView *web;

@property (weak, nonatomic) IBOutlet UIButton *Go;

@property (weak, nonatomic) IBOutlet UITextField *url;

- (IBAction)Go:(id)sender;

@end
