//
//  main.m
//  Stocks
//
//  Created by Enrique Aliaga on 2/1/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRForeignStockHolding.h"
#import "BNRPortfolio.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        BNRStockHolding *xyz = [[BNRStockHolding alloc] init];
        xyz.symbol = @"XYZ";
        xyz.purchaseSharePrice = 2.30;
        xyz.currentSharePrice = 4.50;
        xyz.numberOfShares = 40;
        
        BNRStockHolding *abc = [[BNRStockHolding alloc] init];
        abc.symbol = @"ABC";
        abc.purchaseSharePrice = 5.50;
        abc.currentSharePrice = 3.80;
        abc.numberOfShares = 50;
        
        BNRForeignStockHolding *lmn = [[BNRForeignStockHolding alloc] init];
        lmn.symbol = @"LMN";
        lmn.purchaseSharePrice = 3.70;
        lmn.currentSharePrice = 2.80;
        lmn.numberOfShares = 70;
        lmn.conversionRate = 0.94;
        
        BNRStockHolding *eac = [[BNRStockHolding alloc] init];
        eac.symbol = @"EAC";
        eac.purchaseSharePrice = 3.00;
        eac.currentSharePrice = 3.00;
        eac.numberOfShares = 50;
        
        BNRPortfolio *portfolio = [[BNRPortfolio alloc] init];
        [portfolio addStockHolding:xyz];
        [portfolio addStockHolding:abc];
        [portfolio addStockHolding:lmn];
        [portfolio addStockHolding:eac];
        NSLog(@"Original portfolio: %@", portfolio.holdings);
        
        NSArray *top3 = [portfolio threeMostValuableHoldings];
        NSLog(@"Top three holdings in DESC: %@", top3);
        
        NSArray *holdingsSortedBySymbol = [portfolio alphabeticallySortedHoldings];
        NSLog(@"Holdings sorted ASC by symbol: %@", holdingsSortedBySymbol);
    }
    return 0;
}
