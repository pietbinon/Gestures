//
//  RotationViewController.m
//  Gestures
//
//  Created by Pierre Binon on 2017-03-16.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import "RotationViewController.h"



@interface RotationViewController ()

@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;

@end



@implementation RotationViewController

- (void) viewDidLoad {
    
    [super viewDidLoad];
    
    self.width = 100;
    self.height = 100;
    
    CGRect frame = CGRectMake(CGRectGetMidX(self.view.bounds) - self.width / 2, CGRectGetMidY(self.view.bounds) - self.height / 2, self.width, self.height);
    UIView *redView = [[UIView alloc] initWithFrame: frame];
    redView.backgroundColor = [UIColor redColor];
    [self.view addSubview: redView];
    
    UIRotationGestureRecognizer *rotationGesture = [[UIRotationGestureRecognizer alloc] initWithTarget: self action: @selector(viewRotated:)];
    [redView addGestureRecognizer: rotationGesture];
}


- (void) viewRotated: (UIRotationGestureRecognizer *) sender {
    
    sender.view.transform = CGAffineTransformMakeRotation(sender.rotation);
}

@end
