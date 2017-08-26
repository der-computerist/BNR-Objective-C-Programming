//
//  main.m
//  demo1
//
//  Created by Marvin Abisrror on 1/23/17.
//  Copyright © 2017 Marvin Abisrror. All rights reserved.
//

#import <Foundation/Foundation.h>

void goodDay(char *timeOfDay) {
    printf("Good %s\n", timeOfDay);
}

void allday(void) {
    goodDay("morning");
    goodDay("afternoon");
    goodDay("evening");
}

void dayGreeting(int loops) {
    for (int i = 0; i < loops; i++) {
        allday();
    }
}

int *a = NULL;

void swapItOut(int c) {
    printf("swapItOut: a is now %p and points to %d\n", a, (*a));
    a = (&c);
    printf("swapItOut: a is now %p and points to %d\n", a, (*a));
}

void dontSwapItOut(int c){
    printf("dontSwapItOut: c is now %d\n", c);
}



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        //dayGreeting(2);
        
        
        int b = 5;
        a = (&b);
        
        printf("main: a is now %p and points to %d\n", a, (*a));
        swapItOut(10);
        printf("main: a is now %p and points to %d\n", a, (*a));
        dontSwapItOut(20);
        printf("main: a is now %p and points to %d\n", a, (*a));
        
        
    }
    return 0;
}
