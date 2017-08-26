//
//  main.m
//  Challenge_Chapter40
//
//  Created by Enrique Aliaga on 6/6/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSData+Speakable.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        // Playground
        // printf("%lu\n", sizeof(int));
        
        // Generate 8 bytes of random data
        // srandom((unsigned int)time(NULL));
        // int64_t randomBytes = (random() << 32) | random();
        
        // Pack it in an NSData
        int32_t randomBytes = CFSwapInt32HostToBig(0x53ec306f);
        NSData *inData = [NSData dataWithBytes:&randomBytes length:sizeof(int32_t)];
        NSLog(@"In Data = %@", inData);
        
        // Convert to a speakable string
        NSString *speakable = [inData encodeAsSpeakableString];
        NSLog(@"Got string \"%@\"", speakable);
        
        // Converting it back to an NSData
        NSError *err;
        NSData *outData = [NSData dataWithSpeakableString:speakable error:&err];
        
        if (!outData) {
            NSLog(@"Unexpected error: %@", [err localizedDescription]);
            return -1;
        }
        NSLog(@"Out data: %@", outData);
        
        // outData better be the same as inData
        if (![outData isEqual:inData]) {
            NSLog(@"Data coming out not the same as what went in.");
            return -1;
        }
        
        // Test a misspelling ("Teevo" not "Tivo")
        speakable = @"2 Jeep 3 Halo 7 Teevo 2 Pepsi 2 Volvo";
        outData = [NSData dataWithSpeakableString:speakable error:&err];
        
        if (!outData) {
            NSLog(@"Expected error: %@", [err localizedDescription]);
        } else {
            NSLog(@"Missed bad string");
            return -1;
        }
    }
    return 0;
}
