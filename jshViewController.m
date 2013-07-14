//
//  jshViewController.m
//  testCell
//
//  Created by joshua on 13-6-22.
//  Copyright (c) 2013年 joshua. All rights reserved.
//

#import "jshViewController.h"

@interface jshViewController ()

@end

@implementation jshViewController

//@synthesize listdata;
@synthesize computers;
@synthesize tvCell;

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"viewDidLoad");
    
    NSDictionary *row1 = [[NSDictionary alloc]initWithObjectsAndKeys:@"MacBook", @"Name",
                          @"White",@"Color", nil];
    NSDictionary *row2 = [[NSDictionary alloc]initWithObjectsAndKeys:@"Mac Air", @"Name",
                          @"Silver",@"Color", nil];
    
    NSArray *array = [[NSArray alloc] initWithObjects:row1,row2, nil];
    self.computers = array;
    
    [row1 release];
    [row2 release];
    [array release];
    
    
//    NSArray *array = [[NSArray alloc] initWithObjects:@"Line 1",@"line 2",nil];
//    self.listdata = array;
//    [array release];
}

#pragma TableView data sources
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[self computers] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *SimpleTableIdentifier = @"CustomCellIdentifier";
    //@"SimpleTableIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:SimpleTableIdentifier];
    
    if (cell == nil) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"CustomCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
        
        NSUInteger row = [indexPath row];
        NSDictionary *rowData = [self.computers objectAtIndex:row];
        UILabel *colorLabel = (UILabel *)[cell viewWithTag:kNameValueTag];
        colorLabel.text = [rowData objectForKey:@"Color"];
        
        UILabel *nameLabel = (UILabel *)[cell viewWithTag:kColorValueTag];
        nameLabel.text = [rowData objectForKey:@"Name"];
        
        
        
//        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:SimpleTableIdentifier] autorelease];
//        
//        // Customize table cell title
//        CGRect titleRect = CGRectMake(0, 0, 200, 12);
//        UILabel *titleLabel = [[UILabel alloc]initWithFrame:titleRect];
//        titleLabel.textAlignment = UIBaselineAdjustmentAlignBaselines;
//        titleLabel.text =@"人民币纸黄金";
//        titleLabel.font = [UIFont boldSystemFontOfSize:12];
//        [cell.contentView addSubview:titleLabel];
//        [titleLabel release];
//        
//        
//        CGRect nameLabelRect = CGRectMake(0, 50, 70, 20);
//        UILabel *nameLabel = [[UILabel alloc]initWithFrame:nameLabelRect];
//        nameLabel.textAlignment = UIBaselineAdjustmentAlignBaselines;
//        nameLabel.text = @"Name:";
//        nameLabel.font = [UIFont boldSystemFontOfSize:20];
//        [cell.contentView addSubview:nameLabel];
//        [nameLabel release];
//        
//        CGRect colorLabelRect = CGRectMake(0, 150, 70, 15);
//        UILabel *colorLabel = [[UILabel alloc]initWithFrame:colorLabelRect];
//        colorLabel.textAlignment = UIBaselineAdjustmentAlignBaselines;
//        colorLabel.text = @"Color:";
//        colorLabel.font = [UIFont boldSystemFontOfSize:12];
//        [cell.contentView addSubview:colorLabel];
//        [colorLabel release];
//        
//        CGRect nameValueRect = CGRectMake(20, 50, 200, 20);
//        UILabel *nameValue = [[UILabel alloc]initWithFrame:nameValueRect];
//        nameValue.textAlignment = UIBaselineAdjustmentAlignBaselines;
//        nameValue.tag = kColorValueTag;
//        nameValue.font = [UIFont boldSystemFontOfSize:12];
//        [cell.contentView addSubview:nameValue];
//        [nameValue release];
//        
//        CGRect colorValueRect = CGRectMake(20, 150, 200, 15);
//        UILabel *colorValue = [[UILabel alloc]initWithFrame:colorValueRect];
//        colorValue.textAlignment = UIBaselineAdjustmentAlignBaselines;
//        colorValue.tag = kNameValueTag;
//        colorValue.font = [UIFont boldSystemFontOfSize:12];
//        [cell.contentView addSubview:colorValue];
//        [colorValue release];
    }
//    
//    NSUInteger row = [indexPath row];
//    NSDictionary *rowdata = [self.computers objectAtIndex:row];
//    UILabel *name = (UILabel *)[cell.contentView viewWithTag:kNameValueTag];
//    name.text = [rowdata objectForKey:@"Name"];
//    UILabel *color = (UILabel *)[cell.contentView viewWithTag:kColorValueTag];
//    color.text = [rowdata objectForKey:@"Color"];

    return cell;
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    NSLog(@"didReceiveMemoryWarning");
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [tvCell release];
    [super dealloc];
}
@end
