//
//  ShapeView.m
//  HW5
//
//  Created by naiqiang on 2/13/15.
//  Copyright (c) 2015 naiqiang. All rights reserved.
//

#import "ShapeView.h"

@implementation ShapeView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
    
    [[NSColor greenColor] set];
    
    NSBezierPath* path = [NSBezierPath bezierPath];
    
    NSUInteger width = self.bounds.size.width /3;
    NSUInteger div = 10;
    
    NSRect square = NSMakeRect(0,0,width-div,width-div);
    NSRect oval = NSMakeRect(width*2, 0, width-div,width-div);
    
    [path appendBezierPathWithRect:square];
    [path appendBezierPathWithOvalInRect:oval];

    [path moveToPoint:NSMakePoint(width, 0)];
    [path lineToPoint:NSMakePoint(width*2-div, 0)];
    [path lineToPoint:NSMakePoint(width*1.5, width-div)];
    [path moveToPoint:NSMakePoint(width, 0)];

    [path fill];
    [path stroke];

}

@end
