//
//  BNRPortfolio.h
//  Stocks
//
//  Created by Enrique Aliaga on 2/6/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BNRStockHolding;

@interface BNRPortfolio : NSObject

@property (nonatomic, copy) NSArray *holdings;

- (void)addStockHolding:(BNRStockHolding *)sh;
- (void)removeStockHolding:(BNRStockHolding *)sh;
- (float)totalValue;
- (NSArray *)threeMostValuableHoldings;
- (NSArray *)alphabeticallySortedHoldings;

@end
