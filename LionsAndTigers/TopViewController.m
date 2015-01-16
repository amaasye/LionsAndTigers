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
@property NSMutableArray *lionImagesArray;
@property NSMutableArray *tigerImagesArray;
@end

@implementation TopViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.lionImagesArray = [NSMutableArray new];
    [self.lionImagesArray addObject:[UIImage imageNamed:@"lion_1"]];



}


- (IBAction)onTopRevealButtonTapped:(UIBarButtonItem *)sender {
    [self.delegate topRevealButtonTapped: self];


}

- (NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 1;
}


-(UICollectionViewCell *) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {

    CustomCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    cell.imageView.image = [self.lionImagesArray objectAtIndex:indexPath.row];

    return cell;
}




@end
