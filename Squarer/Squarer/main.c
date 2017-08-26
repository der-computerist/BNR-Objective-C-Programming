//
//  main.c
//  Squarer
//
//  Created by Enrique Aliaga on 1/16/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>

int calculateSquare(int number)
{
    return number * number;
}

int main(int argc, const char * argv[])
{
    int number = 5;
    int square = calculateSquare(number);
    
    printf("\"%d\" squared is \"%d\".\n", number, square);
    return 0;
}
