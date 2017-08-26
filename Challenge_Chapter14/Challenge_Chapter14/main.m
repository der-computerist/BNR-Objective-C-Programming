//
//  main.m
//  Challenge_Chapter14
//
//  Created by Enrique Aliaga on 1/29/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

NSDate* getDateOfBirth()
{
    NSDateComponents *comps = [[NSDateComponents alloc] init];
    [comps setYear:1991];
    [comps setMonth:12];
    [comps setDay:5];
    
    NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDate *dateOfBirth = [g dateFromComponents:comps];
    return dateOfBirth;
}

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSDate *now = [NSDate date];
        NSDate *dateOfBirth = getDateOfBirth();
        
        double secondsAlive = [now timeIntervalSinceDate:dateOfBirth];
        NSLog(@"I have been alive for %.0f seconds", secondsAlive);
    }
    return 0;
}
