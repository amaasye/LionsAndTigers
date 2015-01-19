//
//  HUDViewController.m
//  LionsAndTigers
//
//  Created by Syed Amaanullah on 1/15/15.
//  Copyright (c) 2015 Syed Amaanullah. All rights reserved.
//

#import "HUDViewController.h"

@interface HUDViewController ()

@end

@implementation HUDViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (IBAction)onLionsButtonTapped:(UIButton *)sender {
    // Tell my delegate (ViewController) to execute the method lionsButtonWasTapped
    // because I pressed on the lions button
    [self.delegate lionsButtonWasTapped];
    
}


- (IBAction)onTigersButtonTapped:(UIButton *)sender {
    // Tell my delegate (ViewController) to execute the method tigersButtonWasTapped
    // because I pressed on the tigers button
    [self.delegate tigersButtonWasTapped];
    

}





@end
