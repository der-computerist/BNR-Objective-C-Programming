//
//  main.c
//  Challenge_Chapter38
//
//  Created by Enrique Aliaga on 4/28/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    uint64_t number = 0LLU;
    
    for (int i = 0; i < 64; i += 2) {
        number |= (1LLU << i);
    }
    
    printf("%llu\n", number);
}
