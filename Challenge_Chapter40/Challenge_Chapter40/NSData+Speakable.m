//
//  NSData+Speakable.m
//  Challenge_Chapter40
//
//  Created by Enrique Aliaga on 6/6/17.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

#import <limits.h>
#import "NSData+Speakable.h"

static const NSArray *brandNames = nil;

@implementation NSData (Speakable)

+ (void)initialize
{
    if (!brandNames) {
        brandNames = @[@"Camry", @"Nikon", @"Apple", @"Ford", @"Audi", @"Google", @"Nike", @"Amazon", @"Honda",
            @"Mazda", @"Buick", @"Fiat", @"Jeep", @"Lexus", @"Volvo", @"Fuji", @"Sony", @"Delta", @"Focus", @"Puma",
            @"Samsung", @"Tivo", @"Halo", @"Sting", @"Shrek", @"Avatar", @"Shell", @"Visa", @"Vogue", @"Twitter",
            @"Lego", @"Pepsi"];
    }
}

- (NSString *)encodeAsSpeakableString
{
    NSMutableString *speakableString = [NSMutableString new];
    [self enumerateByteRangesUsingBlock:^(const void *bytes, NSRange byteRange, BOOL *stop) {
        const unsigned char *arrayOfBytes = bytes;
        for (NSInteger i = 0; i < byteRange.length; i++) {
            NSString *encodedByte = [self encodeSingleByte:arrayOfBytes[i]];
            [speakableString appendString:encodedByte];
        }
    }];
    return speakableString;
}

- (NSString *)encodeSingleByte:(unsigned char)byte
{
    unsigned char left3 = byte >> 5;
    unsigned char right5 = byte & 0x1F;
    
    NSString *number = [self encodeAsNumber:left3];
    NSString *brandName = [self encodeAsBrandName:right5];
    
    return [NSString stringWithFormat:@"%@ %@ ", number, brandName];
}

- (NSString *)encodeAsNumber:(unsigned char)left3
{
    return [NSString stringWithFormat:@"%d", (left3 + 2)];
}

- (NSString *)encodeAsBrandName:(unsigned char)right5
{
    return [brandNames objectAtIndex:right5];
}

+ (NSData *)dataWithSpeakableString:(NSString *)s error:(NSError **)e
{
    NSMutableData *data = [NSMutableData new];
    
    NSUInteger endOfString = [s length];
    NSRange searchRange = NSMakeRange(0, endOfString);
    NSUInteger startOfSlice, endOfSlice;
    
    do {
        startOfSlice = [self positionOfNextDigitOnString:s range:searchRange];
        if (startOfSlice == NSNotFound) {
            if (e) {
                NSDictionary *userInfo = @{NSLocalizedDescriptionKey : @"Unable to parse"};
                *e = [NSError errorWithDomain:@"SpeakableBytes" code:1 userInfo:userInfo];
            }
            data = nil;
            break;
        }
        
        searchRange.location = startOfSlice + 1;
        searchRange.length = [[s substringFromIndex:searchRange.location] length];
        
        endOfSlice = [self positionOfNextDigitOnString:s range:searchRange];
        if (endOfSlice == NSNotFound) {
            endOfSlice = endOfString;
        }
        
        NSRange rangeOfSlice = NSMakeRange(startOfSlice, endOfSlice - startOfSlice);
        NSString *slice = [s substringWithRange:rangeOfSlice];
        NSData *decodedByte = [self byteFromSlice:slice];
        if (!decodedByte) {
            if (e) {
                NSDictionary *userInfo = @{NSLocalizedDescriptionKey : @"Unable to parse"};
                *e = [NSError errorWithDomain:@"SpeakableBytes" code:1 userInfo:userInfo];
            }
            data = nil;
            break;
        }
        [data appendData:decodedByte];
        
        searchRange.location = endOfSlice;
        searchRange.length = [[s substringFromIndex:searchRange.location] length];
    } while (endOfSlice != endOfString);
    
    return data;
}

+ (NSUInteger)positionOfNextDigitOnString:(NSString *)s range:(NSRange)searchRange
{
    NSCharacterSet *digits = [NSCharacterSet decimalDigitCharacterSet];
    NSRange digitRange = [s rangeOfCharacterFromSet:digits options:NSLiteralSearch range:searchRange];
    return digitRange.location;
}

+ (NSData *)byteFromSlice:(NSString *)s
{
    NSInteger number; NSString *brandName;
    [self getValuesForNumber:&number brandName:&brandName fromSlice:s];
    if (![self isNumberParseable:number] || ![self isBrandNameParseable:brandName]) {
        return nil;
    }
    unsigned char byte = [self byteFromNumber:number brandName:brandName];
    return [NSData dataWithByte:byte];
}

+ (void)getValuesForNumber:(NSInteger *)number brandName:(NSString **)brandName fromSlice:(NSString *)s
{
    NSString *sTrimmed = [s stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    NSArray *sSliced = [sTrimmed componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    sSliced = [sSliced filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"SELF != ''"]];
    
    *number = [[sSliced objectAtIndex:0] integerValue];
    *brandName = [sSliced objectAtIndex:1];
}

+ (BOOL)isNumberParseable:(NSInteger)number
{
    if (number < 2) {
        return NO;
    }
    return YES;
}

+ (BOOL)isBrandNameParseable:(NSString *)brandName
{
    if (![brandNames containsObject:brandName]) {
        return NO;
    }
    return YES;
}

+ (unsigned char)byteFromNumber:(NSInteger)number brandName:(NSString *)brandName
{
    unsigned char left3 = [self threeLeftmostBitsFrom:number];
    unsigned char right5 = [self fiveRightmostBitsFrom:brandName];
    unsigned char byte = [self byteByJoiningThreeLeftmostBits:left3 withFiveRightmostBits:right5];
    return byte;
}

+ (unsigned char)threeLeftmostBitsFrom:(NSInteger)number
{
    return number - 2;
}

+ (unsigned char)fiveRightmostBitsFrom:(NSString *)brandName
{
    return [brandNames indexOfObject:brandName];
}

+ (unsigned char)byteByJoiningThreeLeftmostBits:(unsigned char)left3 withFiveRightmostBits:(unsigned char)right5
{
    left3 = left3 << 5;
    return left3 | right5;
}

+ (NSData *)dataWithByte:(unsigned char)byte
{
    unsigned char buffer[] = { byte };
    return [NSData dataWithBytes:buffer length:1];
}

@end
