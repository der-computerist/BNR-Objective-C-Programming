//
//  Blender.h
//  Constants
//
//  Created by Enrique Aliaga on 2/10/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(char, BlenderSpeed) {
    BlenderSpeedStir,
    BlenderSpeedChop,
    BlenderSpeedLiquify,
    BlenderSpeedPulse,
    BlenderSpeedIceCrush
};

@interface Blender : NSObject
{
    // speed must be one of the five speeds
    BlenderSpeed speed;
}

// setSpeed: expects one of the five speeds
- (void)setSpeed:(BlenderSpeed)x;

@end
