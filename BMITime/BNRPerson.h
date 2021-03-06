//
//  BNRPerson.h
//  BMITime
//
//  Created by Enrique Aliaga on 2/1/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRPerson : NSObject

// BNRPerson has two properties
@property (nonatomic) float heightInMeters;
@property (nonatomic) int weightInKilos;

// BNRPerson has a method that calculates the Body Mass Index
- (float)bodyMassIndex;

@end
