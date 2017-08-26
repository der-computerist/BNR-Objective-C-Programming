//
//  main.c
//  yostring
//
//  Created by Enrique Aliaga on 6/1/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>  // For printf
#include <stdlib.h>  // For malloc/free
#include <string.h>  // For strlen

int main(int argc, const char * argv[])
{
    char x = '!';  // the character '!'
    
    while (x <= '~') {  // the character '~'
        printf("%x is %c\n", x, x);
        x++;
    }
    
    const char *start = "A backslash after two newlines and a tab:\n\n\t\\";
    printf("%s has %zu characters\n", start, strlen(start));
    printf("The third letter is %c\n", start[2]);
    
    return 0;
}
