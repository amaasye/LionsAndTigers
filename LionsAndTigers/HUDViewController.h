//
//  HUDViewController.h
//  LionsAndTigers
//
//  Created by Syed Amaanullah on 1/15/15.
//  Copyright (c) 2015 Syed Amaanullah. All rights reserved.
//

#import <UIKit/UIKit.h>
@class HUDViewController;

@protocol HUDDelegate
-(void)tigersButtonWasTapped:(HUDViewController *)tigerViewController;
-(void)lionsButtonWasTapped:(HUDViewController *)lionViewController;

@end

@interface HUDViewController : UIViewController


@property id <HUDDelegate> delegate;

@end
