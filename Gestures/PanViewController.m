//
//  PanViewController.m
//  Gestures
//
//  Created by Pierre Binon on 2017-03-16.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import "PanViewController.h"



@interface PanViewController ()

@end



@implementation PanViewController

- (IBAction)redViewPanned:(UIPanGestureRecognizer *)sender {
    
//    //Sender is the red square
//    CGPoint locationInView = [sender locationInView: self.view];
//    sender.view.center = locationInView;
    
    
    //Same result as above but using translation in view
    CGPoint translationInView = [sender translationInView: self.view];
    
    CGPoint oldCenterRedSquare = sender.view.center;
    
    CGPoint newCenterValueRedSquare = CGPointMake(oldCenterRedSquare.x + translationInView.x, oldCenterRedSquare.y + translationInView.y);
    
    sender.view.center = newCenterValueRedSquare;
    
    [sender setTranslation: CGPointZero inView: self.view];
}

@end
