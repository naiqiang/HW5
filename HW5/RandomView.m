//
//  RandomView.m
//  HW5
//
//  Created by naiqiang on 2/13/15.
//  Copyright (c) 2015 naiqiang. All rights reserved.
//

#import "RandomView.h"

@implementation RandomView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
    
    //[[NSColor colorWithPatternImage:[NSImage imageNamed:@"pattern.png"]] set];
    [[NSColor redColor] set];
    
    NSBezierPath* path = [NSBezierPath bezierPath];
    [path moveToPoint:CGPointZero];
    
    NSUInteger width_inc = self.bounds.size.width / (self.randomNumberArray.count+1);
    NSUInteger height = self.bounds.size.height;
    CGFloat x = 0;
    CGFloat y = 0;
    
    for(int i =0; i< self.randomNumberArray.count; i++)
    {
        x += width_inc;
        NSNumber* num =self.randomNumberArray[i];
        y = height *  [num floatValue];
        [path lineToPoint:CGPointMake(x, y)];
    }
    
    x += width_inc;
    [path lineToPoint:CGPointMake(x, 0)];
    [path lineToPoint:CGPointMake(0, 0)];

    
    //[path fill];
    [path stroke];
}

@end
