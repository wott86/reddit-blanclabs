//
//  ViewController.m
//  Reddit
//
//  Created by Cesar Vilera on 2/7/17.
//  Copyright © 2017 Cesar Vilera. All rights reserved.
//

#import "ViewController.h"
#import "EntryTableViewCell.h"

@interface ViewController ()
@property (strong, nonatomic) NSArray *list;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _list = @[@{@"title": @"This is a test", @"author": @"Test author", @"image": @"test-image"}];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    EntryTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"EntryCell"];
    if (cell == nil) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"EntryCell" owner:self options:nil];
        cell = (EntryTableViewCell *)[nib objectAtIndex:0];
    }
    
    cell.titleLabel.text = _list[0][@"title"];
    cell.authorLabel.text = _list[0][@"author"];
    cell.thumbnailImage.image = [UIImage imageNamed:_list[0][@"image"]];
    
    return cell;
}


@end
