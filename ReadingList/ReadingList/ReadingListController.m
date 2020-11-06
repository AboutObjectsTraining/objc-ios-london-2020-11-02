// Copyright (C) 2020 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import "ReadingListController.h"

@implementation ReadingListController

- (IBAction)done:(UIStoryboardSegue *)unwindSegue {
    // TODO: refresh the UI and save the model
}

- (IBAction)cancel:(UIStoryboardSegue *)unwindSegue {
    
}

// MARK: UITableViewDataSource protocol methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 100; // FIXME: compute value
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Book Cell"];
//    if (cell == nil) {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Book Cell"];
//    }
    cell.textLabel.text = [NSString stringWithFormat:@"Row %@", @(indexPath.row + 1)];
    return cell;
}

@end
