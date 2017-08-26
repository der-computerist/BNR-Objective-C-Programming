//
//  BNRForeignStockHolding.m
//  Stocks
//
//  Created by Enrique Aliaga on 2/2/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

#import "BNRForeignStockHolding.h"

@implementation BNRForeignStockHolding

- (float)costInDollars
{
    return [super costInDollars] * self.conversionRate;
}

- (float)valueInDollars
{
    return [super valueInDollars] * self.conversionRate;
}

@end
