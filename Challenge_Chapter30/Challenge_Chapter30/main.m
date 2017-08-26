//
//  main.m
//  Challenge_Chapter30
//
//  Created by Enrique Aliaga on 2/22/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray *stocks = [[NSMutableArray alloc] init];
        
        NSMutableDictionary *stock;
        
        stock = [NSMutableDictionary dictionary];
        [stock setObject:@"AAPL" forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:200] forKey:@"shares"];
        [stock setObject:[NSNumber numberWithFloat:35.70] forKey:@"sharePrice"];
        [stock setObject:[NSNumber numberWithBool:YES] forKey:@"isGrowing"];
        [stock setObject:[NSDate date] forKey:@"currentTime"];
        [stock setObject:[NSData dataWithContentsOfFile:@"/tmp/apple.png"] forKey:@"companyLogo"];
        [stocks addObject:stock];
        
        stock = [NSMutableDictionary dictionary];
        [stock setObject:@"GOOG" forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:160] forKey:@"shares"];
        [stock setObject:[NSNumber numberWithFloat:40.50] forKey:@"sharePrice"];
        [stock setObject:[NSNumber numberWithBool:NO] forKey:@"isGrowing"];
        [stock setObject:[NSDate date] forKey:@"currentTime"];
        [stock setObject:[NSData dataWithContentsOfFile:@"/tmp/google.png"] forKey:@"companyLogo"];
        [stocks addObject:stock];
        
        [stocks writeToFile:@"/tmp/stocks.plist" atomically:YES];
    }
    return 0;
}
