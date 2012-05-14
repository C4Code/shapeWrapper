//
//  ShapeWrapper.m
//  test
//
//  Created by Travis Kirton on 12-05-14.
//  Copyright (c) 2012 POSTFL. All rights reserved.
//

#import "ShapeWrapper.h"

@interface ShapeWrapper ()
-(void)accessTouchSet:(NSNotification *)notification;
@end

@implementation ShapeWrapper
@synthesize C4Shape;
-(void)setup {
    self.C4Shape = [C4Shape rect:CGRectMake(0, 0, 100, 100)];
    self.C4Shape.animationDuration = 0.0f;

    [[NSNotificationCenter defaultCenter] addObserver:self 
                                             selector:@selector(accessTouchSet:) 
                                                 name:@"touchesMoved" 
                                               object:self.C4Shape];
}

-(void)accessTouchSet:(NSNotification *)notification {
    NSDictionary *d = [notification userInfo];
    C4Log(@"%@",d);
    NSSet *touchSet = (NSSet *)[d objectForKey:@"touches"];
    UITouch *t = (UITouch *)[touchSet anyObject];
    CGPoint previousLocation = [t previousLocationInView:self.C4Shape.superview];
    CGPoint currentLocation = [t locationInView:self.C4Shape.superview];
    CGPoint displacement = CGPointMake(currentLocation.x - previousLocation.x, currentLocation.y - previousLocation.y);
    
    C4Shape *currentShape = (C4Shape *)[notification object];
    CGPoint newCenter = currentShape.center;
    newCenter.x += displacement.x;
    newCenter.y += displacement.y;
    currentShape.center = newCenter;
}
@end
