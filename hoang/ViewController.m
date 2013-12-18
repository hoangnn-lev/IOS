//
//  ViewController.m
//  hoang
//
//  Created by Nguyen Hoang on 12/17/13.
//  Copyright (c) 2013 Nguyen Hoang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize GioiTinh,LuaChonGioiTinh, KetQua;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg.png"]];
    
    [KetQua setText:@"ket qua la"];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)LuaChonGioiTinh:(id)sender {
    if (LuaChonGioiTinh.on) {
        KetQua.text=@"nam";
    }else{
        KetQua.text=@"nu";
    }
    
}

- (IBAction)GioiTinh:(id)sender {
    if (GioiTinh.selectedSegmentIndex==0) {
        KetQua.text=@"nam";
    }
    else{
        KetQua.text=@"nu";
    }
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
@end
