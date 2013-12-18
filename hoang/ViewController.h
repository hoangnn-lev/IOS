//
//  ViewController.h
//  hoang
//
//  Created by Nguyen Hoang on 12/17/13.
//  Copyright (c) 2013 Nguyen Hoang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISwitch *LuaChonGioiTinh;

@property (weak, nonatomic) IBOutlet UISegmentedControl *GioiTinh;

@property (weak, nonatomic) IBOutlet UILabel *KetQua;

- (IBAction)LuaChonGioiTinh:(id)sender;
- (IBAction)GioiTinh:(id)sender;

@end
