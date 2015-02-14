//
//  ArtView.m
//  HW5
//
//  Created by naiqiang on 2/13/15.
//  Copyright (c) 2015 naiqiang. All rights reserved.
//

#import "ArtView.h"

@implementation ArtView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
    
    NSColor* blue = [NSColor blueColor];
    [blue set];
    
    [NSBezierPath fillRect:self.bounds];
}

@end
