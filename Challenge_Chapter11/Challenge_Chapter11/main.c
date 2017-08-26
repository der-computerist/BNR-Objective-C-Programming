//
//  main.c
//  Challenge_Chapter11
//
//  Created by Enrique Aliaga on 1/23/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>
#include <time.h>

int main(int argc, const char * argv[])
{
    long secondsSince1970 = time(NULL);
    long secondsToAdd = 4000000;
    long futureDateInSeconds = secondsSince1970 + secondsToAdd;
    
    struct tm futureDate;
    localtime_r(&futureDateInSeconds, &futureDate);
    printf("The future date is %d-%d-%d\n", futureDate.tm_year + 1900, futureDate.tm_mon + 1, futureDate.tm_mday);
}
