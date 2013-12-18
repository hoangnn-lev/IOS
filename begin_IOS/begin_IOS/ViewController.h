//
//  ViewController.h
//  begin_IOS
//
//  Created by Nguyen Hoang on 12/18/13.
//  Copyright (c) 2013 Nguyen Hoang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    NSUserDefaults *UserInfo;
}

@property (weak, nonatomic) IBOutlet UITextField *FullName;

@property (weak, nonatomic) IBOutlet UITextField *Email;

@property (weak, nonatomic) IBOutlet UITextField *Facebook;

- (IBAction)Ok:(id)sender;

@end
