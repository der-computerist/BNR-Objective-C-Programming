//
//  NSDate+BNRDateConvenience.h
//  DateMonger
//
//  Created by Enrique Aliaga on 3/25/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (BNRDateConvenience)

+ (NSDate *)initializeWithYear:(NSInteger)year
                         month:(NSInteger)month
                           day:(NSInteger)day;

@end
