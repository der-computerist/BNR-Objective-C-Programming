//
//  Document.h
//  TahDoodle
//
//  Created by Enrique Aliaga on 2/28/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface Document : NSDocument <NSTableViewDataSource>

@property (nonatomic) NSMutableArray *tasks;
@property (nonatomic) IBOutlet NSTableView *taskTable;

- (IBAction)addTask:(id)sender;
- (IBAction)deleteTask:(id)sender;

@end

