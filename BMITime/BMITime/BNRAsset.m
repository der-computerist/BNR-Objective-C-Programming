//
//  BNRAsset.m
//  BMITime
//
//  Created by Enrique Aliaga on 2/3/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

#import "BNRAsset.h"
#import "BNREmployee.h"

@implementation BNRAsset

- (NSString *)description
{
    // Is holder non-nil?
    if (self.holder) {
        return [NSString stringWithFormat:@"<%@: $%d, assigned to %@>",
                self.label, self.resaleValue, self.holder];
    } else {
        return [NSString stringWithFormat:@"<%@: $%d unassigned",
                self.label, self.resaleValue];
    }
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
