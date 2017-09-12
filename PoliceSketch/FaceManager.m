//
//  FaceManager.m
//  PoliceSketch
//
//  Created by Jaison Bhatti on 2017-09-11.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "FaceManager.h"
#import "Face.h"
@interface FaceManager ()

@property (nonatomic, strong) NSArray<Face *>*eyes;
@property (nonatomic, assign) NSUInteger index;
@property (nonatomic, assign) NSUInteger currentEyes;

@end

@implementation FaceManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self nextEyes];
        [self previousEyes];
        [self listOfEyes];
        _currentEyes = 0;
    }
    return self;
}

- (void) listOfEyes {
    Face *eyes1 = [[Face alloc] initWithImage:@"eyes_1.jpg"];
    Face *eyes2 = [[Face alloc] initWithImage:@"eyes_2.jpg"];
    Face *eyes3 = [[Face alloc] initWithImage:@"eyes_3.jpg"];
    Face *eyes4 = [[Face alloc] initWithImage:@"eyes_4.jpg"];
    Face *eyes5 = [[Face alloc] initWithImage:@"eyes_5.jpg"];
    _eyes = @[eyes1, eyes2, eyes3, eyes4, eyes5];
}


- (Face *)nextEyes {
    _currentEyes += 1;
    if (_currentEyes > (self.eyes.count - 1)) {
        _currentEyes = 0;
    }
    return self.eyes[_currentEyes];
}

- (Face *)previousEyes {
   
    if (_currentEyes != 0) {
     _currentEyes -= 1;    
    }else{
      _currentEyes = (self.eyes.count - 1);
    }
    return self.eyes[_currentEyes];
}



@end
