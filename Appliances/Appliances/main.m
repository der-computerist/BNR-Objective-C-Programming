//
//  main.m
//  Appliances
//
//  Created by Enrique Aliaga on 3/21/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRAppliance.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        BNRAppliance *a = [[BNRAppliance alloc] init];
        NSLog(@"a is %@", a);
        
        [a setValue:@"Washing Machine" forKey:@"productName"];
        [a setValue:[NSNumber numberWithInt:240] forKey:@"voltage"];
        NSLog(@"a is %@", a);
        
        NSLog(@"the product name is %@", [a valueForKey:@"productName"]);
    }
    return 0;
}
