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
    
    NSColor* red = [NSColor redColor];
    [red set];
    
    [NSBezierPath fillRect:self.bounds];

}

@end
