//
//  Background.h
//  hoang
//
//  Created by Nguyen Hoang on 12/18/13.
//  Copyright (c) 2013 Nguyen Hoang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Background : UIViewController{
    NSArray *MotDongHinh;
}

@property (weak, nonatomic) IBOutlet UIImageView *Hinh;

@property (weak, nonatomic) IBOutlet UISegmentedControl *LuaChon;

- (IBAction)LuaChon:(id)sender;

@end
