//
//  main.m
//  Challenge_Chapter15
//
//  Created by Enrique Aliaga on 1/31/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <readline/readline.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSLog(@"Who is cool? ");
        NSString *name = [NSString stringWithUTF8String:readline(NULL)];
        NSLog(@"%@ is cool!", name);
    }
    return 0;
}
