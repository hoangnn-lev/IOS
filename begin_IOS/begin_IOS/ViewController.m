//
//  ViewController.m
//  begin_IOS
//
//  Created by Nguyen Hoang on 12/18/13.
//  Copyright (c) 2013 Nguyen Hoang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize FullName,Email,Facebook;

- (void)viewDidLoad
{
    [super viewDidLoad];
    UserInfo = [NSUserDefaults standardUserDefaults];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//disabel keyboard if click out
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
- (IBAction)Ok:(id)sender {
    NSString *fullname = [FullName text];
    NSString *email = [Email text];
    NSString *facebook = [Facebook text];
    [UserInfo setObject:fullname forKey:@"fullname"];
    [UserInfo setObject:email forKey:@"email"];
    [UserInfo setObject:facebook forKey:@"facebook"];
}
@end
