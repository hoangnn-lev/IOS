//
//  WebView.m
//  hoang
//
//  Created by Nguyen Hoang on 12/18/13.
//  Copyright (c) 2013 Nguyen Hoang. All rights reserved.
//

#import "WebView.h"

@implementation WebView
@synthesize url,web,Go;

-(void)viewDidLoad{
    [super viewDidLoad];
   // NSURL *getURl = [NSURL URLWithString:[NSString stringWithFormat:@"http://google.com.vn"]];
    //[web loadRequest:[NSURLRequest requestWithURL:getURl]];
}
- (IBAction)Go:(id)sender {
   // NSURL *getURl = [NSURL URLWithString:[url text]];
   // [web loadRequest:[NSURLRequest requestWithURL:getURl]];
}
@end
