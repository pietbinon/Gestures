//
//  TapViewController.m
//  Gestures
//
//  Created by Pierre Binon on 2017-03-16.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import "TapViewController.h"



@interface TapViewController ()

@end



@implementation TapViewController

- (void) viewDidLoad {
    
    [super viewDidLoad];
    
    CGFloat width = 100;
    CGFloat height = 100;
    
    CGRect frame = CGRectMake(CGRectGetMidX(self.view.bounds) - width / 2, CGRectGetMidY(self.view.bounds) - height / 2, width, height);
    UIView *view = [[UIView alloc] initWithFrame: frame];
    view.backgroundColor = [UIColor orangeColor];
    [self.view addSubview: view];
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget: self action: @selector(colorChanged:)];
    [view addGestureRecognizer: tapGesture];
}


- (void) colorChanged: (UITapGestureRecognizer *) sender {
    
    UIColor *oldColor = sender.view.backgroundColor;
    UIColor *newColor = [oldColor isEqual: [UIColor orangeColor]] ? [UIColor purpleColor] : [UIColor orangeColor];
    sender.view.backgroundColor = newColor;
}

@end
