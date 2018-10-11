//
//  JITHypnosisView.m
//  Hypnosister
//
//  Created by JuicyITer on 10/10/2018.
//  Copyright © 2018 JuicyITer. All rights reserved.
//

#import "JITHypnosisView.h"

@implementation JITHypnosisView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
   
    CGRect bounds = self.bounds;
    
    // The center of the bounds rectangle.
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    
    // The largest radius of the circle that circumscribe the view
    float maxRadius = hypot(bounds.size.height, bounds.size.width) / 2.0;
    
    // Add an UIBezierPath
    UIBezierPath *path = [[UIBezierPath alloc] init];
    
    for (float curRadius = maxRadius; curRadius > 0; curRadius -= 20){
        // After drawing a circle, move the point
        [path moveToPoint:CGPointMake(center.x + curRadius, center.y)];
        
        // Draw a circle
        [path addArcWithCenter:center
                        radius:curRadius
                    startAngle:0
                      endAngle:M_PI * 2.0
                     clockwise:YES];

    }
    
    // Configure the line width to 10 points
    path.lineWidth = 10;
    // and the colour to lightGrey with UIColor
    [[UIColor lightGrayColor] setStroke];
    
    // Draw the line
    [path stroke];    
    
}
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // All JITHypnosisViews starts with a clear background color
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}
@end
