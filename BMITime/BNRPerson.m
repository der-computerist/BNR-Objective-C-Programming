//
//  BNRPerson.m
//  BMITime
//
//  Created by Enrique Aliaga on 2/1/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

#import "BNRPerson.h"

@implementation BNRPerson

- (float)bodyMassIndex
{
    float h = [self heightInMeters];
    return [self weightInKilos] / (h * h);
}

@end
