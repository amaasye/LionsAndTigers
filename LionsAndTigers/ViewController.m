//
//  ViewController.m
//  LionsAndTigers
//
//  Created by Syed Amaanullah on 1/15/15.
//  Copyright (c) 2015 Syed Amaanullah. All rights reserved.
//

#import "ViewController.h"
#import "TopViewController.h"

@interface ViewController () <TopDelegate>
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *lionLeftConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *lionRightConstraint;
@property (strong, nonatomic) IBOutlet NSObject *topContainer;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    if ([segue.identifier isEqualToString:@"viewSegue"]) {

}



}



@end
