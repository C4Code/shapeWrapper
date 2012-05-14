//
//  C4WorkSpace.m
//  shapeWrapper
//
//  Created by Travis Kirton on 12-05-14.
//  Copyright (c) 2012 POSTFL. All rights reserved.
//

#import "C4WorkSpace.h"
#import "ShapeWrapper.h"
//@interface C4WorkSpace () 
//-(void)accessTouchSet:(NSNotification *)notification;
//@end

@implementation C4WorkSpace {
    //    C4Shape *s;
    ShapeWrapper *sw;
    
}

-(void)setup {
    sw = [ShapeWrapper new];
    [sw setup];
    [self.canvas addShape:sw.C4Shape];
    //    s.animationDuration = 0.0f;
    //    s = [C4Shape rect:CGRectMake(0, 0, 100, 100)];
    //    [self.canvas addShape:s];
    //    
    //    [[NSNotificationCenter defaultCenter] addObserver:self 
    //                                             selector:@selector(accessTouchSet:) 
    //                                                 name:@"touchesMoved" 
    //                                               object:nil];
}

//-(void)accessTouchSet:(NSNotification *)notification {
//    NSDictionary *d = [notification userInfo];
//    NSSet *touchSet = (NSSet *)[d objectForKey:@"touches"];
//    UITouch *t = (UITouch *)[touchSet anyObject];
//    CGPoint previousLocation = [t previousLocationInView:self.canvas];
//    CGPoint currentLocation = [t locationInView:self.canvas];
//    CGPoint displacement = CGPointMake(currentLocation.x - previousLocation.x, currentLocation.y - previousLocation.y);
//    
//    C4Shape *currentShape = (C4Shape *)[notification object];
//    CGPoint newCenter = currentShape.center;
//    newCenter.x += displacement.x;
//    newCenter.y += displacement.y;
//    currentShape.center = newCenter;
//}

@end
