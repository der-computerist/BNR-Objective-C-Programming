//
//  BNRObserver.m
//  Callbacks
//
//  Created by Enrique Aliaga on 3/24/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

#import "BNRObserver.h"

@implementation BNRObserver

- (void)observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary *)change
                       context:(void *)context
{
    NSString *oldValue = [change objectForKey:NSKeyValueChangeOldKey];
    NSString *newValue = [change objectForKey:NSKeyValueChangeNewKey];
    NSLog(@"Observed: %@ of %@ was changed from %@ to %@", keyPath, object, oldValue, newValue);
}

@end
