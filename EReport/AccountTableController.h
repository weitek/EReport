//
//  AccountTableController.h
//  EReport
//
//  Created by Victor Mylcin on 29.11.12.
//  Copyright (c) 2012 Victor Mylcin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AccountTableController : NSObject <NSTableViewDataSource> {
    IBOutlet NSTableView *tableView;
    NSMutableArray *accounts;
}

@property (nonatomic) BOOL identifierNotSet;

- (IBAction)addAccount:(id)sender;
- (IBAction)removeAccount:(id)sender;

- (NSArray *)getAccounts;

@end
