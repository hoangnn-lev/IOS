//
//  AlertViewController.m
//  TabView
//
//  Created by Nguyen Hoang on 12/18/13.
//  Copyright (c) 2013 Nguyen Hoang. All rights reserved.
//

#import "AlertViewController.h"

@interface AlertViewController ()

@end

@implementation AlertViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    notification = [[UIAlertView alloc] initWithTitle:@"Thong bao" message:@"Hien thi alert" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
    [notification show];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
