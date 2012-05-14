//
//  C4Shape+touchSetAccess.h
//  accessTouches
//
//  Created by Travis Kirton on 12-05-12.
//  Copyright (c) 2012 POSTFL. All rights reserved.
//

#import "C4Shape.h"

@interface C4Shape (touchSetAccess)
-(void)postNotification:(NSString *)notification userInfo:(NSDictionary *)userInfo;
@end
