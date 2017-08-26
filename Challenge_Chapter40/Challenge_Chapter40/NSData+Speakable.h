//
//  NSData+Speakable.h
//  Challenge_Chapter40
//
//  Created by Enrique Aliaga on 6/6/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (Speakable)

- (NSString *)encodeAsSpeakableString;
+ (NSData *)dataWithSpeakableString:(NSString *)s error:(NSError **)e;

@end
