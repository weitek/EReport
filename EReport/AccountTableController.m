//
//  AccountTableController.m
//  EReport
//
//  Created by Victor Mylcin on 29.11.12.
//  Copyright (c) 2012 Victor Mylcin. All rights reserved.
//

#import "AccountTableController.h"
#import "Account.h"

@implementation AccountTableController

- (id)init
{
    self = [super self];
    if (self) {
        accounts = [[NSMutableArray alloc] init];
        _identifierNotSet = YES;
    }
    return self;
}

- (IBAction)addAccount:(id)sender
{
    Account *newAccount = [[Account alloc] init];
    [accounts addObject:newAccount];
    [tableView reloadData];
}

- (IBAction)removeAccount:(id)sender
{
    NSInteger selectedRow = [tableView selectedRow];
    if (selectedRow == -1) return;
    [accounts removeObjectAtIndex:selectedRow];
    [tableView reloadData];
}

-(NSArray *)getAccounts
{
    return [[NSArray alloc] initWithArray:accounts];
}

- (NSInteger)numberOfRowsInTableView:(NSTableView *)aTableView
{
//    NSInteger selectedRow = [tableView selectedRow];
//    if (selectedRow == -1) {
//        [tableView ]
//    }
    return [accounts count];
}

- (id)tableView:(NSTableView *)aTableView objectValueForTableColumn:(NSTableColumn *)aTableColumn row:(NSInteger)rowIndex
{
//* заглушка - видимо надо использовать KVO
    if (_identifierNotSet) {
        NSArray *tableColums = [tableView tableColumns];
        NSTableColumn *column;
        column = [tableColums objectAtIndex:0];
        [column setIdentifier:@"name"];
        column = [tableColums objectAtIndex:1];
        [column setIdentifier:@"comment"];
        _identifierNotSet = NO;
    }
//*/
    Account *accountNow = [accounts objectAtIndex:rowIndex];
    NSString *keyIdent = [aTableColumn identifier];
    NSString *result = [accountNow valueForKey:keyIdent];
    return result;
}

- (void)tableView:(NSTableView *)aTableView setObjectValue:(id)anObject forTableColumn:(NSTableColumn *)aTableColumn row:(NSInteger)rowIndex
{
    
}

@end
