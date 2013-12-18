//
//  WebBrowser.h
//  hoang
//
//  Created by Nguyen Hoang on 12/18/13.
//  Copyright (c) 2013 Nguyen Hoang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebBrowser : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *url;

@property (weak, nonatomic) IBOutlet UIButton *go;

@property (weak, nonatomic) IBOutlet UIWebView *web;

- (IBAction)go:(id)sender;

@end
