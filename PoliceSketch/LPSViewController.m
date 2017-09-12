//
//  LPSViewController.m
//  PoliceSketch
//
//  Created by Steven Masuch on 2014-07-20.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LPSViewController.h"
#import "Face.h"
#import "FaceManager.h"


@interface LPSViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *eyesImage;
@property (weak, nonatomic) IBOutlet UIImageView *noseImage;
@property (weak, nonatomic) IBOutlet UIImageView *mouthImage;
@property (nonatomic, strong) FaceManager* manager;

@end

@implementation LPSViewController

- (IBAction)moveEyesForward:(id)sender {
    Face* nextEyes = [self.manager nextEyes];
    self.eyesImage.image = nextEyes.image;
    
}

- (IBAction)moveEyesBackward:(id)sender {
    Face* previousEyes = [self.manager previousEyes];
    self.eyesImage.image = previousEyes.image;
}

- (IBAction)moveNoseForward:(id)sender {
}

- (IBAction)moveMouthForward:(id)sender {
}

- (IBAction)moveMouthBackward:(id)sender {
}

- (IBAction)moveNoseBackward:(id)sender {
}


- (void)updateView {
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.manager = [FaceManager new];
    [self updateView];
    // Here is where you will create the buttons & image views and add them to the view.
}

@end
