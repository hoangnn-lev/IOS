//
//  kinhnghiem.h
//  hoang
//
//  Created by Nguyen Hoang on 12/17/13.
//  Copyright (c) 2013 Nguyen Hoang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface kinhnghiem : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *InputKinhNghiem;

@property (weak, nonatomic) IBOutlet UISlider *SliderKinhNghiem;

- (IBAction)ActionSliderKinhNghiem:(id)sender;

- (IBAction)ActionKinhNghiem:(id)sender;

@end
