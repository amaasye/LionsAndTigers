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

@interface ViewController () <TopDelegate, HUDDelegate>
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *lionLeftConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *lionRightConstraint;


@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];

}


-(void)topRevealButtonTapped {

    self.lionLeftConstraint.constant = self.lionLeftConstraint.constant + 175.0;
    self.lionRightConstraint.constant = self.lionRightConstraint.constant - 175.0;

    //    if (self.lionLeftConstraint.constant == self.lionLeftConstraint.constant + 175.0) {
    //        self.editing == false;
    //    }
}


-(void)lionsButtonWasTapped {
    // TopViewController *topViewController;
    [self.topViewController showLions];
}

-(void)tigersButtonWasTapped {
    [self.topViewController showTigers];
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    if ([segue.identifier isEqualToString:@"topSegue"]) {

        UINavigationController *navVC = segue.destinationViewController;
        self.topViewController = [navVC.childViewControllers objectAtIndex:0];
        self.topViewController.delegate = self;

    }

    else if ([segue.identifier isEqualToString:@"hudSegue"]) {
        HUDViewController *hudVC = segue.destinationViewController;
        hudVC.delegate = self;
    }

}




@end
