//
//  NSString+Digest.h
//  utils
//
//  Created by Tony Hillerson on 7/26/12.
//  Copyright (c) 2012 Tack Mobile, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Digest)

+ (NSString *) randomSHA1;
    
- (NSString *) sha1;
- (NSString *) md5;
    
@end
