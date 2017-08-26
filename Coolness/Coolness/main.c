//
//  main.c
//  Coolness
//
//  Created by Enrique Aliaga on 1/17/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

#import <readline/readline.h>
#import <stdio.h>

int main(int argc, const char * argv[])
{
    printf("Who is cool? ");
    const char *name = readline(NULL);
    printf("%s is cool!\n\n", name);
    return 0;
}
