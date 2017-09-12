//
//  FaceManager
//  PoliceSketch
//
//  Created by Jaison Bhatti on 2017-09-11.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Face;

@interface FaceManager : NSObject

- (Face *)nextEyes;

- (Face *)previousEyes;

@end
