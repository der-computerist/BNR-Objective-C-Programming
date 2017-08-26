//
//  main.m
//  Challenge_Chapter17
//
//  Created by Enrique Aliaga on 1/31/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

NSString * stringFromFile(NSString *filePath)
{
    NSString *hugeString =
                [NSString stringWithContentsOfFile:filePath
                                          encoding:NSUTF8StringEncoding
                                             error:NULL];
    return hugeString;
}

NSArray * arrayOfNames()
{
    NSString *namesString = stringFromFile(@"/usr/share/dict/propernames");
    NSArray *names = [namesString componentsSeparatedByString:@"\n"];
    return names;
}

NSArray * arrayOfWords()
{
    NSString *wordsString = stringFromFile(@"/usr/share/dict/words");
    NSArray *words = [wordsString componentsSeparatedByString:@"\n"];
    return words;
}

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSArray *names = arrayOfNames();
        NSArray *words = arrayOfWords();
        
        for (NSString *name in names) {
            NSString * lowercaseName = [name lowercaseString];
            if (![name isEqualToString:@""] && [words containsObject:lowercaseName]) {
                NSLog(@"%@", name);
            }
        }
    }
    return 0;
}
