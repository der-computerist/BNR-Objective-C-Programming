//
//  main.c
//  Challenge_Chapter39
//
//  Created by Enrique Aliaga on 6/4/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>
#include <string.h>

int spaceCount(const char *string)
{
    int count = 0;
    
    for (int i = 0; i < strlen(string); i++) {
        if (string[i] == 0x20) {
            count++;
        }
    }
    
    return count;
}

int main(int argc, const char * argv[])
{
    const char *sentence = "He was not in the cab at the time.";
    printf("\"%s\" has %d spaces\n", sentence, spaceCount(sentence));
    
    return 0;
}
