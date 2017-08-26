//
//  main.m
//  Groceries
//
//  Created by Enrique Aliaga on 1/31/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSMutableArray *groceryList = [NSMutableArray array];
        
        [groceryList addObject:@"Loaf of bread"];
        [groceryList addObject:@"Container of milk"];
        [groceryList addObject:@"Stick of butter"];
        
        NSLog(@"My grocery list is:");
        for (NSString *i in groceryList) {
            NSLog(@"%@", i);
        }
    }
    return 0;
}
