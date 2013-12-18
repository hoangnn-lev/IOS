//
//  WebBrowser.m
//  hoang
//
//  Created by Nguyen Hoang on 12/18/13.
//  Copyright (c) 2013 Nguyen Hoang. All rights reserved.
//

#import "WebBrowser.h"

@implementation WebBrowser
@synthesize go,url,web;

-(void)viewDidLoad{
    [super viewDidLoad];
 
}

- (IBAction)go:(id)sender {
    NSURL *goUrl = [NSURL URLWithString:[NSString stringWithFormat:@"http://%@",[url text]]];
    [web loadRequest:[NSURLRequest requestWithURL:goUrl]];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}

@end
