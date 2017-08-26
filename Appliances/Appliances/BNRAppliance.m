//
//  BNRAppliance.m
//  Appliances
//
//  Created by Enrique Aliaga on 3/21/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

#import "BNRAppliance.h"

@implementation BNRAppliance

- (instancetype)initWithProductName:(NSString *)pn
{
    if (self = [super init]) {
        _productName = [pn copy];
        _voltage = 120;
    }
    return self;
}

- (instancetype)init
{
    return [self initWithProductName:@"Unknown"];
}

- (void)setVoltage:(int)x
{
    NSLog(@"setting voltage to %d", x);
    _voltage = x;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@: %d volts>", _productName, self.voltage];
}

@end
