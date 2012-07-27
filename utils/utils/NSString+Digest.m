//
//  NSString+Digest.m
//  utils
//
//  Created by Tony Hillerson on 7/26/12.
//  Copyright (c) 2012 Tack Mobile, LLC. All rights reserved.
//

#import "NSString+Digest.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (SHA1)

- (NSString *) sha1 {
    unsigned char digest[CC_SHA1_DIGEST_LENGTH];
    NSData *stringBytes = [self dataUsingEncoding:NSUTF8StringEncoding];
    if (CC_SHA1([stringBytes bytes], [stringBytes length], digest)) {
        return [NSString stringWithFormat:@"%s", digest];
    }
    return nil;
}

@end
