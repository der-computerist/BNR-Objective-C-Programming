//
//  main.c
//  CountDown
//
//  Created by Enrique Aliaga on 1/17/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

#import <readline/readline.h>
#import <stdio.h>
#import <stdlib.h>

int main(int argc, const char * argv[])
{
    printf("Where should I start counting? ");
    const char *response = readline(NULL);
    int startAt = atoi(response);
    
    for (int i = startAt; i >= 0; i -= 3) {
        printf("%d\n", i);
        if (i % 5 == 0) {
            printf("Found one!\n");
        }
    }
}
