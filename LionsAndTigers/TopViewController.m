//
//  TopViewController.m
//  LionsAndTigers
//
//  Created by Syed Amaanullah on 1/15/15.
//  Copyright (c) 2015 Syed Amaanullah. All rights reserved.
//

#import "TopViewController.h"

@interface TopViewController () 

@property CGFloat *topViewStartingWidth;
@property CGFloat *HUDViewStartingLeadingConstant;
@end

@implementation TopViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (IBAction)onTopRevealButtonTapped:(UIBarButtonItem *)sender {
    [self.delegate topRevealButtonTapped: self];


}





@end
