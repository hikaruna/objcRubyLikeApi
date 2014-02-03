//
//  NSArray+NSArray_RubyLike.h
//  familiarlink
//
//  Created by hikaruna on H26/02/03.
//  Copyright (c) 平成26年 SBF Corporation. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (NSArray_RubyLike)

-(id)findWithConditions:(BOOL (^)(id item))conditions;
-(NSNumber *)findIndexWithConditions:(BOOL (^)(id item))conditions;

@end
