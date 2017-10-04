//
//  main.c
//  Affirmation
//
//  Created by Enrique Aliaga on 10/4/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

int main(int argc, const char * argv[])
{
    if (argc != 3) {
        fprintf(stderr, "Usage: Affirmation <adjective> <number>\n");
        return 1;
    }
    
    int count = atoi(argv[2]);
    
    for (int j = 0; j < count; j++) {
        printf("You are %s!\n", argv[1]);
    }
    
    return 0;
}
