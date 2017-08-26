//
//  main.m
//  DateMonger
//
//  Created by Enrique Aliaga on 3/25/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSDate+BNRDateConvenience.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        NSDate *date = [NSDate initializeWithYear:2016 month:12 day:25];
        NSLog(@"Merry Christmas! Today is %@", date);
        
    }
    return 0;
}
