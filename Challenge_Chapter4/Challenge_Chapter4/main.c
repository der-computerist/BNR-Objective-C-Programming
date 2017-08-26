//
//  main.c
//  Challenge_Chapter4
//
//  Created by Enrique Aliaga on 1/12/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    int i = 20;
    int j = 25;
    int k = ( i > j ) ? 10 : 5;
    
    if ( 5 < j - k ) {
        printf("The first expression is true.\n");
    } else if ( j > i) {
        printf("The second expression is true.\n");
    } else {
        printf("Neither expression is true.\n");
    }
}
