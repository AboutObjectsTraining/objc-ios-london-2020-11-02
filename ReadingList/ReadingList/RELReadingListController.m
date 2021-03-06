// Copyright (C) 2020 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import "RELReadingListController.h"
#import "RELViewBookController.h"
#import <ReadingListModel/ReadingListModel.h>

@interface RELReadingListController ()
@property (strong, nonatomic) IBOutlet RLMStoreController *storeController;
@property (strong, nonatomic) RLMReadingList *readingList;
@end

@implementation RELReadingListController

- (RLMReadingList *)readingList {
    if (_readingList == nil) {
        _readingList = self.storeController.fetchedReadingList;
    }
    return _readingList;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    RELViewBookController *controller = segue.destinationViewController;
    NSIndexPath *indexPath = self.tableView.indexPathForSelectedRow;
    RLMBook *book = [self.readingList bookAtIndexPath:indexPath];
    controller.book = book;
}

// MARK: Unwind segues

- (IBAction)done:(UIStoryboardSegue *)unwindSegue {
    [self.tableView reloadData];
    [self.storeController saveReadingList:self.readingList];
}

- (IBAction)cancel:(UIStoryboardSegue *)unwindSegue {
    
}

// MARK: UITableViewDataSource protocol methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.readingList.books.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Book Cell"];
    RLMBook *book = [self.readingList bookAtIndexPath:indexPath];
    cell.textLabel.text = book.title;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@ %@", book.year, book.author.fullName];
    return cell;
}

@end
