//
//  ViewController.m
//  LionsAndTigers
//
//  Created by Syed Amaanullah on 1/15/15.
//  Copyright (c) 2015 Syed Amaanullah. All rights reserved.
//

#import "ViewController.h"
#import "TopViewController.h"
#import "HUDViewController.h"

@interface ViewController () <TopDelegate, HUDDelegate, UICollisionBehaviorDelegate>
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *leftConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *rightConstraint;

@property UICollisionBehavior *collisionBehavior;
@property UIDynamicItemBehavior *dynamicsItemBehavior;
@property UIGravityBehavior *gravityBehavior;
@property UIPushBehavior *pushBehavior;
@property UIDynamicAnimator *dynamicsAnimator;
@property (nonatomic, readonly) BOOL isOpen;



@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];

}

-(BOOL) isOpen {
    return  self.rightConstraint.constant > -16.0;
}

-(void)topRevealButtonTapped {
    if (self.isOpen)
    {
        [self.rightConstraint setConstant:-16.0];
        [self.leftConstraint setConstant:-16.0];
    }
    else
    {
        [self.rightConstraint setConstant:-self.view.bounds.size.width * .45];
        [self.leftConstraint setConstant:self.view.bounds.size.width * .55];

    }

    [UIView animateWithDuration:1.0 animations:^{
        [self.view layoutIfNeeded];
    }];

}


-(void)lionsButtonWasTapped {
    [self.topViewController showLions];
    [self.rightConstraint setConstant:0 - 55];
    [self.leftConstraint setConstant:0 - 55];

}

-(void)tigersButtonWasTapped {
    [self.topViewController showTigers];
    [self.rightConstraint setConstant:0 - 55];
    [self.leftConstraint setConstant:0 - 55];

}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    if ([segue.identifier isEqualToString:@"topSegue"]) {
        // Tell topViewController that I (ViewController) will be it's delegate
        UINavigationController *navVC = segue.destinationViewController;
        self.topViewController = [navVC.childViewControllers objectAtIndex:0];
        self.topViewController.delegate = self;

    }
        // Tell HUDViewController that I (ViewController) will be it's delegate
        else if ([segue.identifier isEqualToString:@"hudSegue"]) {
        HUDViewController *hudVC = segue.destinationViewController;
        hudVC.delegate = self;
    }

}




@end
