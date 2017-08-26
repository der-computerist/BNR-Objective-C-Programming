//
//  main.m
//  ImageFetch
//
//  Created by Enrique Aliaga on 2/10/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        NSURL *url = [NSURL URLWithString:@"http://www.google.com/images/logos/ps_logo2.png"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        NSError *error = nil;
        NSData *data = [NSURLConnection sendSynchronousRequest:request
                                             returningResponse:NULL
                                                         error:&error];
        
        if (!data) {
            NSLog(@"fetch failed: %@", [error localizedDescription]);
            return 1;
        }
        
        NSLog(@"The file is %lu bytes", (unsigned long)[data length]);
        
        BOOL written = [data writeToFile:@"/tmp/google.png"
                                 options:NSDataWritingAtomic
                                   error:&error];
        
        if (!written) {
            NSLog(@"write failed: %@", [error localizedDescription]);
            return 1;
        }
        
        NSLog(@"Success!");
        
        NSData *readData = [NSData dataWithContentsOfFile:@"/tmp/google.png"];
        NSLog(@"The file read from the disk has %lu bytes",
              (unsigned long)[readData length]);
        
        NSArray *desktops =
                NSSearchPathForDirectoriesInDomains(NSDesktopDirectory, NSUserDomainMask, YES);
        NSString *desktopPath = desktops[0];
        NSLog(@"%@", desktopPath);
        
    }
    return 0;
}
