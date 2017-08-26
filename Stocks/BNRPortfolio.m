//
//  BNRPortfolio.m
//  Stocks
//
//  Created by Enrique Aliaga on 2/6/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

#import "BNRPortfolio.h"
#import "BNRStockHolding.h"

@interface BNRPortfolio ()
{
    NSMutableArray *_holdings;
}
@end

@implementation BNRPortfolio

- (NSArray *)holdings
{
    return [_holdings copy];
}

- (void)addStockHolding:(BNRStockHolding *)sh
{
    if (!_holdings) {
        _holdings = [[NSMutableArray alloc] init];
    }
    [_holdings addObject:sh];
}

- (void)removeStockHolding:(BNRStockHolding *)sh
{
    [_holdings removeObject:sh];
}

- (float)totalValue
{
    float sum = 0;
    for (BNRStockHolding *sh in _holdings) {
        sum += [sh valueInDollars];
    }
    return sum;
}

- (NSArray *)threeMostValuableHoldings
{
    NSSortDescriptor *vid = [NSSortDescriptor sortDescriptorWithKey:@"valueInDollars"
                                                          ascending:NO];
    NSArray *sortedHoldings = [_holdings sortedArrayUsingDescriptors:@[vid]];
    return [sortedHoldings subarrayWithRange:NSMakeRange(0, 3)];
}

- (NSArray *)alphabeticallySortedHoldings
{
    NSSortDescriptor *s = [NSSortDescriptor sortDescriptorWithKey:@"symbol"
                                                        ascending:YES];
    NSArray *sortedHoldings = [_holdings sortedArrayUsingDescriptors:@[s]];
    return sortedHoldings;
}

@end
