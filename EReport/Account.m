//
//  Account.m
//  EReport
//
//  Created by Victor Mylcin on 29.11.12.
//  Copyright (c) 2012 Victor Mylcin. All rights reserved.
//

#import "Account.h"

@implementation Account

- (id)init
{
    self = [super init];
    if (self) {
        _name = @"Name";
        _comment = @"Comment";
    }
    return self;
}

@end
