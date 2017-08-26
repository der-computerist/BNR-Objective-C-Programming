//
//  main.c
//  Addresses
//
//  Created by Enrique Aliaga on 1/20/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>
#include <limits.h>

int main(int argc, const char * argv[])
{
    printf("A short is %zu bytes\n", sizeof(short));
    printf("The smallest number a short can store is: %d\n", SHRT_MIN);
    printf("The largest number a short can store is: %d\n", SHRT_MAX);
    printf("The largest number an unsigned short can store is: %u\n", USHRT_MAX);
    return 0;
}
