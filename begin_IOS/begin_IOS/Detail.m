//
//  Detail.m
//  begin_IOS
//
//  Created by Nguyen Hoang on 12/18/13.
//  Copyright (c) 2013 Nguyen Hoang. All rights reserved.
//

#import "Detail.h"

@implementation Detail
-(void)viewDidLoad{
    [super viewDidLoad];
    UserInfo  = [NSUserDefaults standardUserDefaults];
    NSString *fullname = [UserInfo objectForKey:@"fullname"];
    NSLog(@"%@",fullname);
}

@end
