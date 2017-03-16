//
//  SwipeViewController.m
//  Gestures
//
//  Created by Pierre Binon on 2017-03-16.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import "SwipeViewController.h"



@interface SwipeViewController ()

@property (nonatomic, assign) BOOL centered;

@end



@implementation SwipeViewController

- (void) viewDidLoad {
    
    [super viewDidLoad];
    
    CGFloat width = 380;
    CGFloat height = 50;
        
    
    UIView *whiteView = [[UIView alloc] initWithFrame: CGRectMake(CGRectGetMidX(self.view.bounds) - width / 2, CGRectGetMidY(self.view.bounds) - height / 2, width, height)];
    whiteView.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview: whiteView];
    whiteView.clipsToBounds = YES;
    
    
    UIView *orangeView = [[UIView alloc] initWithFrame: whiteView.bounds];
    orangeView.backgroundColor = [UIColor orangeColor];
    
    [whiteView addSubview: orangeView];
    
    
    UISwipeGestureRecognizer *swipeGestureLeft = [[UISwipeGestureRecognizer alloc] initWithTarget: self action: @selector(viewSwiped:)];
    swipeGestureLeft.direction = UISwipeGestureRecognizerDirectionLeft;
    [orangeView addGestureRecognizer: swipeGestureLeft];
    
    UISwipeGestureRecognizer *swipeGestureRight = [[UISwipeGestureRecognizer alloc] initWithTarget: self action: @selector(viewSwiped:)];
    swipeGestureRight.direction = UISwipeGestureRecognizerDirectionRight;
    [orangeView addGestureRecognizer: swipeGestureRight];
    
    
    self.centered = YES;
}


- (void) viewSwiped: (UISwipeGestureRecognizer *) sender {
    
    switch (sender.direction) {
        case UISwipeGestureRecognizerDirectionLeft: {
            if (self.centered == YES) {
                sender.view.transform = CGAffineTransformMakeTranslation(-200, 0);
                self.centered = NO;
            } else {
                sender.view.transform = CGAffineTransformMakeTranslation(0, 0);
                self.centered = YES;
            }
            break;
        }
        
        case UISwipeGestureRecognizerDirectionRight: {
            if (self.centered == YES) {
                sender.view.transform = CGAffineTransformMakeTranslation(200, 0);
                self.centered = NO;
            } else {
                sender.view.transform = CGAffineTransformMakeTranslation(0, 0);
                self.centered = YES;
            }
            break;
        }
        default:
            NSLog(@"I dunno");
    }
}

@end
