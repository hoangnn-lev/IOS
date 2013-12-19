//
//  ViewController.m
//  SidebarDemo
//
//  Created by Simon on 28/6/13.
//  Copyright (c) 2013 Appcoda. All rights reserved.
//

#import "MainViewController.h"
#import "SWRevealViewController.h"
#import "SimpleTableCell.h"

@interface MainViewController ()

@end

@implementation MainViewController{
    NSArray *tableData;
}
- (void)viewDidLoad
{
    [super viewDidLoad];

    self.title = @"main";
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"calendar_photo.jpg"]];
    
    //add data for table view
    tableData = [NSArray arrayWithObjects:@"Egg Benedict",@"Mushrom Risotto",@"Full Breakfast",@"Hamburger", nil];
    
    
    // Change button color
    _sidebarButton.tintColor = [UIColor colorWithWhite:0.96f alpha:0.2f];
    
    // Set the side bar button action. When it's tapped, it'll show up the sidebar.
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
    
    //clear background table view
    [_tableViewCustom setBackgroundView:nil];
    [_tableViewCustom setBackgroundColor:[UIColor clearColor]];
 
    // Set the gesture
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];

}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    // Return the number of rows in the section.
    return [tableData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //custome cell table view
    static NSString *simpleTableIdentifier = @"SimpleTableCell";
    SimpleTableCell *cell = (SimpleTableCell *)[tableView dequeueReusableHeaderFooterViewWithIdentifier:simpleTableIdentifier];
    if(cell == nil){
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"SimpleTableCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    //set data for view
    cell.title.text = [tableData objectAtIndex:indexPath.row];
    cell.thumbnail.image = [UIImage imageNamed:@"calendar.png"];
    cell.right.text = [NSString stringWithFormat:@"%i",indexPath.row+1];
    
    //custom border
    //cell.layer.cornerRadius:100.0];

    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//hiden keyboard when end edit
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
@end
