//
//  C4Shape+touchSetAccess.m
//  accessTouches
//
//  Created by Travis Kirton on 12-05-12.
//  Copyright (c) 2012 POSTFL. All rights reserved.
//

#import "C4Shape+touchSetAccess.h"

@implementation C4Shape (touchSetAccess)

-(void)postNotification:(NSString *)notification userInfo:(NSDictionary *)userInfo {
	[[NSNotificationCenter defaultCenter] postNotificationName:notification object:self userInfo:userInfo];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    NSDictionary *userInfo = [NSDictionary dictionaryWithObject:touches forKey:@"touches"];
    [self postNotification:@"touchesBegan" userInfo:userInfo];
    [super touchesBegan:touches withEvent:event];
    [self touchesBegan];
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    NSDictionary *userInfo = [NSDictionary dictionaryWithObject:touches forKey:@"touches"];
    [self postNotification:@"touchesMoved" userInfo:userInfo];
    [super touchesMoved:touches withEvent:event];
    [self touchesMoved];
}

@end
