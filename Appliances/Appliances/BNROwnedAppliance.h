//
//  BNROwnedAppliance.h
//  Appliances
//
//  Created by Enrique Aliaga on 3/21/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

#import "BNRAppliance.h"

@interface BNROwnedAppliance : BNRAppliance

@property (readonly) NSSet *ownerNames;

// The designated initializer
- (instancetype)initWithProductName:(NSString *)pn firstOwnerName:(NSString *)n;
- (void)addOwnerName:(NSString *)n;
- (void)removeOwnerName:(NSString *)n;

@end
