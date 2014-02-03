//
//  NSArray+NSArray_RubyLike.m
//  familiarlink
//
//  Created by hikaruna on H26/02/03.
//  Copyright (c) 平成26年 SBF Corporation. All rights reserved.
//

#import "NSArray+NSArray_RubyLike.h"

@implementation NSArray (NSArray_RubyLike)

-(id)findWithConditions:(BOOL (^)(id item))conditions {
    for(id item in self) {
        if(conditions(item)) {
            return item;
        }
    }
    return [NSNull null];
}

-(NSNumber *)findIndexWithConditions:(BOOL (^)(id item))conditions {
    NSUInteger count = 0;
    for(id item in self) {
        if(conditions(item)) {
            return @(count);
        }
        count++;
    }
    return (NSNumber *)[NSNull null];
}
@end
