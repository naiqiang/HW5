//
//  RandomPercentGenerator.m
//  DrawingBoard
//
//  Created by Martin Nash on 7/29/14.
//  Copyright (c) 2014 Martin Nash. All rights reserved.
//

#import "RandomPercentGenerator.h"

@implementation RandomPercentGenerator

+(NSArray*)arrayOfPercents:(NSUInteger)count
{
    NSAssert(count > 0, @"Must have a count greater than zero");
    
    NSMutableArray *numbers = [NSMutableArray new];
    while (numbers.count < count) {
        NSNumber *singleNumber = @( arc4random_uniform(1000) / 1000.0 );
        [numbers addObject:singleNumber];
    }
    return [NSArray arrayWithArray:numbers];
}

@end