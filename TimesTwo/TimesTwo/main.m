//
//  main.m
//  TimesTwo
//
//  Created by Enrique Aliaga on 1/29/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSDate *currentTime = [NSDate date];
        NSLog(@"currentTime's value is %p", currentTime);
        
        NSDate *startTime = currentTime;
        
        sleep(2);
        
        currentTime = [NSDate date];
        NSLog(@"currentTime's value is now %p", currentTime);
        NSLog(@"The adress of the original object is %p", startTime);
        
        currentTime = nil;
        NSLog(@"currentTime's value is %p", currentTime);
    }
    return 0;
}
