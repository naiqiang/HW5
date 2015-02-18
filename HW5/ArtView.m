//
//  ArtView.m
//  HW5
//
//  Created by naiqiang on 2/13/15.
//  Copyright (c) 2015 naiqiang. All rights reserved.
//

#import "ArtView.h"
#import "RandomPercentGenerator.h"

@implementation ArtView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
    
    NSBezierPath* path = [NSBezierPath bezierPath];

    NSFontManager* fontMgr = [NSFontManager sharedFontManager];
    NSArray* fontNames = [fontMgr availableFonts];
    NSUInteger fontTotalNum = fontNames.count;

    NSUInteger width = self.bounds.size.width;
    NSUInteger height = self.bounds.size.height;

    NSUInteger n = width*height/30000+10;
    NSLog(@"%lu", (unsigned long)n);
    while(n-->0)
    {
        // random numbers for: font, size, glyph, rgba, x, y
        NSArray* rand = [RandomPercentGenerator arrayOfPercents:9];
        
        
        int fontIndex = [(NSNumber*)rand[0] floatValue] * fontTotalNum;
        int size = [(NSNumber*)rand[1] floatValue] * 96 + 32;
        NSString* name = (NSString*)[fontNames objectAtIndex:fontIndex];
        NSFont* font = [NSFont fontWithName:name size:size];

        int glyphIndex = [(NSNumber*)rand[2] floatValue] * font.numberOfGlyphs;
        NSGlyph glyph = (NSGlyph)(glyphIndex);

        float R = [(NSNumber*)rand[3] floatValue];
        float G = [(NSNumber*)rand[4] floatValue];
        float B = [(NSNumber*)rand[5] floatValue];
        float A = [(NSNumber*)rand[6] floatValue];
        
        float x = [(NSNumber*)rand[7] floatValue] * width;
        float y = [(NSNumber*)rand[8] floatValue] * height;
        
        //        NSLog(@"Font %@ has %lu glyphs", font, (unsigned long)font.numberOfGlyphs);
        //        NSLog(@"Draw %d with (%f,%f,%f,%f,) at (%f,%f)", glyphIndex, R,G,B,A,x,y);
        //NSLog(@"Draw with (%f,%f,%f,%f,)", R,G,B,A);

        NSColor* color = [NSColor colorWithRed:R green:G  blue:B alpha:A ];
        NSColor* color2 = [NSColor colorWithRed:R green:G  blue:B alpha:1 ];
        [color setFill];
        [color2 setStroke];
        
        [path moveToPoint:NSMakePoint(x, y)];
        [path appendBezierPathWithGlyph:glyph inFont:font];
        
        if ( glyphIndex % 2 == 0){
            [path fill];
        }
        [path stroke];
    }

}

@end
