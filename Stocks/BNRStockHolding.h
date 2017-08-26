//
//  BNRStockHolding.h
//  Stocks
//
//  Created by Enrique Aliaga on 2/1/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject

@property (nonatomic) float purchaseSharePrice;
@property (nonatomic) float currentSharePrice;
@property (nonatomic) int numberOfShares;
@property (nonatomic, copy) NSString *symbol;

- (float)costInDollars;
- (float)valueInDollars;

@end
