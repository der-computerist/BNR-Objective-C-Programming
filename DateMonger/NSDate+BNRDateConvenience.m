//
//  NSDate+BNRDateConvenience.m
//  DateMonger
//
//  Created by Enrique Aliaga on 3/25/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

#import "NSDate+BNRDateConvenience.h"

@implementation NSDate (BNRDateConvenience)

+ (NSDate *)initializeWithYear:(NSInteger)year
                         month:(NSInteger)month
                           day:(NSInteger)day
{
    NSDateComponents *comps = [[NSDateComponents alloc] init];
    [comps setYear:year];
    [comps setMonth:month];
    [comps setDay:day];
    [comps setHour:0];
    [comps setMinute:0];
    [comps setSecond:0];
    
    NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDate *newDate = [g dateFromComponents:comps];
    
    return newDate;
}

@end
