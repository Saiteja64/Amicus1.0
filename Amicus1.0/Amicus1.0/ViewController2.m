//
//  ViewController2.m
//  Amicus1.0
//
//  Created by Saiteja Samudrala on 2/28/15.
//  Copyright (c) 2015 edu.saiteja. All rights reserved.
//

#import "ViewController2.h"
#import "TableViewCell.h"

@interface ViewController2 ()

@end

@implementation ViewController2 

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    NSUserDefaults * defaults = [NSUserDefaults standardUserDefaults];
    NSMutableArray * names = [defaults objectForKey:@"names"];
    return [names count];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"cells");
    
    NSUserDefaults * defaults = [NSUserDefaults standardUserDefaults];
    NSMutableArray * names = [defaults objectForKey:@"names"];
    NSMutableArray * statuses = [defaults objectForKey:@"statuses"];
    NSMutableArray * distances = [defaults objectForKey:@"distances"];
    NSMutableArray * propics = [defaults objectForKey:@"images"];
    
    NSString * proURL = [propics objectAtIndex:indexPath.row];
    
    NSData * imageData = [[NSData alloc] initWithContentsOfURL: [NSURL URLWithString: proURL]];
    


    static NSString *CellIdentifier = @"TableViewCell";
    TableViewCell *cell = (TableViewCell *)[self.tableView
                                            dequeueReusableCellWithIdentifier:CellIdentifier];
    // Configure the cell...
    if (cell == nil)
    {
        cell = [[TableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                    reuseIdentifier:CellIdentifier];
    }
    
    
    NSString * userName = [names objectAtIndex:indexPath.row];
    NSString * relStatus = [statuses objectAtIndex:indexPath.row];
    NSString * distance = [distances objectAtIndex:indexPath.row];
    
    // Display recipe in the table cell
    cell.nameLabel.text = userName;
    cell.distanceLabel.text = distance;
    cell.relLabel.text = relStatus;
    cell.proPic.image= [UIImage imageWithData: imageData];

    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
