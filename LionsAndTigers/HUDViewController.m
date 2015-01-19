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
    [self.delegate lionsButtonWasTapped];
    
}


- (IBAction)onTigersButtonTapped:(UIButton *)sender {
    [self.delegate tigersButtonWasTapped];
    

}





@end
