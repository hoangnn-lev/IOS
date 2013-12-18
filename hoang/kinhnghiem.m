//
//  kinhnghiem.m
//  hoang
//
//  Created by Nguyen Hoang on 12/17/13.
//  Copyright (c) 2013 Nguyen Hoang. All rights reserved.
//

#import "kinhnghiem.h"

@implementation kinhnghiem
@synthesize InputKinhNghiem, SliderKinhNghiem;

-(void) viewDidLoad{
    [super viewDidLoad];
    [InputKinhNghiem setText:@"5"];
}

- (IBAction)ActionSliderKinhNghiem:(id)sender {
    [InputKinhNghiem setText:[NSString stringWithFormat:@"%i",(int)SliderKinhNghiem.value]];
}

- (IBAction)ActionKinhNghiem:(id)sender {
    SliderKinhNghiem.value = [InputKinhNghiem.text floatValue];
}

@end
