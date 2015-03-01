//
//  DialogController.h
//  Amicus1.0
//
//  Created by Saiteja Samudrala on 2/28/15.
//  Copyright (c) 2015 edu.saiteja. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DialogController : UIViewController <UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSString *chatMateId;
@property (strong, nonatomic) NSMutableArray *messageArray;
@property (strong, nonatomic) NSString * userId;
@property (strong, nonatomic) UITextField *activeTextField;


- (IBAction)sendMessage:(id)sender;
- (IBAction)getLoc:(id)sender;
@end
