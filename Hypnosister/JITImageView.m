//
//  JITImageView.m
//  Hypnosister
//
//  Created by JuicyITer on 11/10/2018.
//  Copyright © 2018 JuicyITer. All rights reserved.
//

#import "JITImageView.h"

@implementation JITImageView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {

    CGRect bounds = self.bounds;
    
    // The center of the bounds rectangle.
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;

    
    UIImage *logo = [UIImage imageNamed:@"logo.png"];
    [logo drawInRect:rect];
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
