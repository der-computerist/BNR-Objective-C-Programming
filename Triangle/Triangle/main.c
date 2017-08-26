//
//  main.c
//  Triangle
//
//  Created by Enrique Aliaga on 1/15/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>

float remainingAngle(float firstAngle, float secondAngle)
{
    float remainingAngle = 180.0 - (firstAngle + secondAngle);
    return remainingAngle;
}

int main(int argc, const char * argv[])
{
    float angleA = 30.0;
    float angleB = 60.0;
    float angleC = remainingAngle(angleA, angleB);
    printf("The third angle is %.2f\n", angleC);
    return 0;
}
