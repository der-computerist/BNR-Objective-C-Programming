//
//  main.c
//  TheHeap
//
//  Created by Enrique Aliaga on 1/24/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

typedef struct {
    float heightInMeters;
    int weightInKilos;
} Person;

float bodyMassIndex(Person *p)
{
    return p->weightInKilos / (p->heightInMeters * p->heightInMeters);
}

int main(int argc, const char * argv[])
{
    // Allocate memory for one Person struct
    Person *mikey = (Person *)malloc(sizeof(Person));
    
    // Fill in two members of the struct
    mikey->weightInKilos = 96;
    mikey->heightInMeters = 1.7;
    
    // Print out the BMI of the original Person
    float mikeyBMI = bodyMassIndex(mikey);
    printf("mikey has a BMI of %f\n", mikeyBMI);
    
    // Let the memory be recycled
    free(mikey);
    
    // Forget where it was
    mikey = NULL;
    
    return 0;
}
