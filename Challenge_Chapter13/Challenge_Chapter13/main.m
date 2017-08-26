//
//  main.m
//  Challenge_Chapter13
//
//  Created by Enrique Aliaga on 1/25/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSHost *computerInfo = [NSHost currentHost];
        NSString *computerName = [computerInfo localizedName];
        
        NSLog(@"My computer's name is: %@", computerName);
    }
    return 0;
}
