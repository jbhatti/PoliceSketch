//
//  Face.m
//  PoliceSketch
//
//  Created by Jaison Bhatti on 2017-09-11.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "Face.h"

@implementation Face


- (instancetype)initWithImage:(NSString *)image
{
    self = [super init];
    if (self) {
        _image = [UIImage imageNamed:image];
        
    }
    return self;
}



@end
