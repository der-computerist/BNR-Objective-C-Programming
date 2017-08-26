//
//  BNROwnedAppliance.m
//  Appliances
//
//  Created by Enrique Aliaga on 3/21/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

#import "BNROwnedAppliance.h"

@interface BNROwnedAppliance ()
{
    NSMutableSet *_ownerNames;
}
@end

@implementation BNROwnedAppliance

- (instancetype)initWithProductName:(NSString *)pn
                     firstOwnerName:(NSString *)n
{
    // Call the superclass's initializer
    if (self = [super initWithProductName:pn]) {
        
        // Create a set to hold owner names
        _ownerNames = [[NSMutableSet alloc] init];
        
        // Is the first owner non-nil?
        if (n) {
            [_ownerNames addObject:n];
        }
    }
    // Return the pointer to the new object
    return self;
}

- (instancetype)initWithProductName:(NSString *)pn
{
    return [self initWithProductName:pn firstOwnerName:nil];
}

- (void)addOwnerName:(NSString *)n
{
    [_ownerNames addObject:n];
}

- (void)removeOwnerName:(NSString *)n
{
    [_ownerNames removeObject:n];
}

- (NSSet *)ownerNames
{
    return [_ownerNames copy];
}

@end
