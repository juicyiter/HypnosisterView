//
//  JITTrangleView.m
//  Hypnosister
//
//  Created by JuicyITer on 11/10/2018.
//  Copyright © 2018 JuicyITer. All rights reserved.
//

#import "JITTrangleView.h"

@implementation JITTrangleView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    CGRect bounds = self.bounds;

    CGPoint leftCorner, rightCorner, topCorner;

	leftCorner.x = bounds.origin.x;
	leftCorner.y = bounds.size.height;

	rightCorner.x = bounds.size.width;
	rightCorner.y = leftCorner.y;

	topCorner.x = (leftCorner.x + rightCorner.x) / 2.0;
	topCorner.y = bounds.origin.y;


    CGContextRef curContext = UIGraphicsGetCurrentContext();
    CGContextSaveGState(curContext);
    
    UIBezierPath *path = [[UIBezierPath alloc] init];
    
    [path moveToPoint:leftCorner];
    [path addLineToPoint:rightCorner];
    [path addLineToPoint:topCorner];
    [path closePath];
    [path addClip];
    
    CGFloat  locations[2] = {0.0, 1.0};
    CGFloat components[8] = {1.0, 0.0, 0.0, 1.0,
        1.0, 1.0, 0.0, 1.0};
    CGColorSpaceRef colorspace = CGColorSpaceCreateDeviceRGB();
    CGGradientRef gradient = CGGradientCreateWithColorComponents(colorspace, components, locations, 2);
    
    CGPoint startPoint = CGPointMake(topCorner.x, topCorner.y + bounds.size.height);
    CGPoint endPoint = topCorner;
    CGContextDrawLinearGradient(curContext, gradient, startPoint, endPoint, 0);
    CGGradientRelease(gradient);
    CGColorSpaceRelease(colorspace);
    
    CGContextRestoreGState(curContext);
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if(self){
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

@end
