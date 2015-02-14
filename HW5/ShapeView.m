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
    
    NSColor* green = [NSColor greenColor];
    [green set];
    
    [NSBezierPath fillRect:self.bounds];

}

@end
