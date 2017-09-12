//
//  Face.h
//  PoliceSketch
//
//  Created by Jaison Bhatti on 2017-09-11.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Face : NSObject

@property (nonatomic,strong) UIImage* image;


- (instancetype)initWithImage:(NSString *)image;

@end
