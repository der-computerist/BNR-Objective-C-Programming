//
//  main.c
//  Numbers
//
//  Created by Enrique Aliaga on 1/16/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>
#include <math.h>

int main(int argc, const char * argv[])
{
    double numberInRadians = 1.0;
    double sine = sin(numberInRadians);
    
    printf("The sine of %d radians is %.3f\n", (int)numberInRadians, sine);
    
    return 0;
}
