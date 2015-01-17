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

-(void)topRevealButtonTapped:(TopViewController *)top {

    self.lionLeftConstraint.constant = self.lionLeftConstraint.constant + 175.0;
    self.lionRightConstraint.constant = self.lionRightConstraint.constant - 175.0;

//    if (self.lionLeftConstraint.constant == self.lionLeftConstraint.constant + 175.0) {
//        self.editing == false;
//    }
}

-(void)tigersButtonWasTapped:(HUDViewController *)tigerViewController {

}

-(void)lionsButtonWasTapped:(HUDViewController *)lionViewController {

}

- (void)viewDidLoad {
    [super viewDidLoad];

}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    if ([segue.identifier isEqualToString:@"bottomSegue"]) {

        UINavigationController *navVC = segue.destinationViewController;
        TopViewController *topVC = navVC.viewControllers[0];
        topVC.delegate = self;

    }



}



@end
