//
//  SimpleTableCell.m
//  SidebarDemo
//
//  Created by Nguyen Hoang on 12/18/13.
//  Copyright (c) 2013 Appcoda. All rights reserved.
//

#import "SimpleTableCell.h"

@implementation SimpleTableCell
@synthesize leftColor,title,description,right,thumbnail;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code

    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

@end
