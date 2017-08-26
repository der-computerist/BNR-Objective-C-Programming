//
//  BNRStockHolding.m
//  Stocks
//
//  Created by Enrique Aliaga on 2/1/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

- (float)costInDollars
{
    return [self purchaseSharePrice] * [self numberOfShares];
}

- (float)valueInDollars
{
    return [self currentSharePrice] * [self numberOfShares];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<Stock Holding %@, valued in $%.2f>",
            self.symbol, self.valueInDollars];
}

@end
