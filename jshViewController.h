//
//  jshViewController.h
//  testCell
//
//  Created by joshua on 13-6-22.
//  Copyright (c) 2013年 joshua. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kNameValueTag 1
#define kColorValueTag 2

@interface jshViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

{
//    NSArray *listdata;
    NSArray *computers;
    UITableViewCell *tvCell;
    
}

//@property (nonatomic, retain) NSArray *listdata;
@property (nonatomic, retain) NSArray *computers;

@property (retain, nonatomic) IBOutlet UITableViewCell *tvCell;

@end
