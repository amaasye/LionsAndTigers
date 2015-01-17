//
//  TopViewController.m
//  LionsAndTigers
//
//  Created by Syed Amaanullah on 1/15/15.
//  Copyright (c) 2015 Syed Amaanullah. All rights reserved.
//

#import "TopViewController.h"
#import "CustomCollectionViewCell.h"

@interface TopViewController () <UICollectionViewDataSource, UICollectionViewDelegate>

@property CGFloat *topViewStartingWidth;
@property CGFloat *HUDViewStartingLeadingConstant;
@property NSMutableArray *photosArray;
@property NSMutableArray *lionsArray;
@property NSMutableArray *tigersArray;
@end

@implementation TopViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.lionsArray = [NSMutableArray new];
    [self.lionsArray addObject:[UIImage imageNamed:@"lion_1"]];
    [self.lionsArray addObject:[UIImage imageNamed:@"lion_2"]];
    [self.lionsArray addObject:[UIImage imageNamed:@"lion_3"]];

    self.tigersArray = [NSMutableArray new];
    [self.tigersArray addObject:[UIImage imageNamed:@"tiger1"]];
    [self.tigersArray addObject:[UIImage imageNamed:@"tiger2"]];
    [self.tigersArray addObject:[UIImage imageNamed:@"tiger3"]];

    self.photosArray = self.lionsArray;


}



- (IBAction)onTopRevealButtonTapped:(UIBarButtonItem *)sender {
    [self.delegate topRevealButtonTapped: self];


}

- (NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.photosArray.count;
}


-(UICollectionViewCell *) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {

    CustomCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    cell.imageView.image = [self.photosArray objectAtIndex:indexPath.row];

    return cell;
}




@end
