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
@property HUDViewController *hudViewController;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation TopViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self showLions];


}

-(void)showTigers {
    // Initlize an array filled with tigers for the collection view
    self.tigersArray = [NSMutableArray new];
    [self.tigersArray addObject:[UIImage imageNamed:@"tiger1"]];
    [self.tigersArray addObject:[UIImage imageNamed:@"tiger2"]];
    [self.tigersArray addObject:[UIImage imageNamed:@"tiger3"]];
    [self.tigersArray addObject:[UIImage imageNamed:@"tigers4"]];
    [self.tigersArray addObject:[UIImage imageNamed:@"tigers5"]];
    [self.tigersArray addObject:[UIImage imageNamed:@"tigers6"]];
    [self.tigersArray addObject:[UIImage imageNamed:@"tigers7"]];
    [self.tigersArray addObject:[UIImage imageNamed:@"tigers8"]];

    self.photosArray = self.tigersArray;
    // Shut the topViewController
   // [self.delegate topRevealButtonTapped];
    [self.collectionView reloadData];

}

-(void)showLions {
    // Initlize an array filled with lions for the collection view
    self.lionsArray = [NSMutableArray new];
    [self.lionsArray addObject:[UIImage imageNamed:@"lions_1"]];
    [self.lionsArray addObject:[UIImage imageNamed:@"lions_2"]];
    [self.lionsArray addObject:[UIImage imageNamed:@"lions_3"]];
    [self.lionsArray addObject:[UIImage imageNamed:@"lions_4"]];
    [self.lionsArray addObject:[UIImage imageNamed:@"lions_5"]];
    [self.lionsArray addObject:[UIImage imageNamed:@"lions_6"]];
    [self.lionsArray addObject:[UIImage imageNamed:@"lions_7"]];
    [self.lionsArray addObject:[UIImage imageNamed:@"lions_8"]];

    self.photosArray = self.lionsArray;
    // Shut the topViewController
    // [self.delegate topRevealButtonTapped];
    [self.collectionView reloadData];


}

- (IBAction)onTopRevealButtonTapped:(UIBarButtonItem *)sender {
    //tell my delegate that I pressed the burger button
    [self.delegate topRevealButtonTapped];

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
