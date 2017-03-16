//
//  PinchViewController.m
//  Gestures
//
//  Created by Pierre Binon on 2017-03-16.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import "PinchViewController.h"



@interface PinchViewController ()

@end



@implementation PinchViewController

- (void) viewDidLoad {
    
    [super viewDidLoad];
    
    CGFloat width = 100;
    CGFloat height = 100;
    
    CGRect frame = CGRectMake(CGRectGetMidX(self.view.bounds) - width / 2, CGRectGetMidY(self.view.bounds) - height / 2, width, height);
    UIView *view = [[UIView alloc] initWithFrame: frame];
    view.backgroundColor = [UIColor purpleColor];
    [self.view addSubview: view];
    
    UIPinchGestureRecognizer *pinchGesture = [[UIPinchGestureRecognizer alloc] initWithTarget: self action: @selector(viewPinched:)];
    [view addGestureRecognizer: pinchGesture];
}


- (void) viewPinched: (UIPinchGestureRecognizer *) sender {
    
    CGFloat scaleValue = sender.scale;
    sender.view.transform = CGAffineTransformMakeScale(scaleValue, scaleValue);
    scaleValue = 1.0;
}

@end
