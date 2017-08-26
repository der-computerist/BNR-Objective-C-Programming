//
//  BNRAppliance.h
//  Appliances
//
//  Created by Enrique Aliaga on 3/21/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRAppliance : NSObject
{
    NSString *_productName;
}
// @property (nonatomic, copy) NSString *productName;
@property (nonatomic) int voltage;

// The designated initializer
- (instancetype)initWithProductName:(NSString *)pn;

@end
