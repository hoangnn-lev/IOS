//
//  Background.m
//  hoang
//
//  Created by Nguyen Hoang on 12/18/13.
//  Copyright (c) 2013 Nguyen Hoang. All rights reserved.
//

#import "Background.h"

@implementation Background
@synthesize Hinh, LuaChon;
-(void)viewDidLoad{
    [super viewDidLoad];
    
    MotDongHinh = [NSArray arrayWithObjects:@"1.jpg",@"2.jpg", nil];
    
    //NSLog(@"%@",[MotDongHinh objectAtIndex:0]);
    
    UIImage *uiImg = [UIImage imageNamed:[MotDongHinh objectAtIndex:0]];
    
    [Hinh setImage:uiImg];

}
- (IBAction)LuaChon:(id)sender {
    NSInteger LuaChonHinh = [LuaChon selectedSegmentIndex];
    UIImage *uiImg = [UIImage imageNamed:[MotDongHinh objectAtIndex:LuaChonHinh]];
     NSLog(@"%@",uiImg);
    [Hinh setImage:uiImg];

}
@end
