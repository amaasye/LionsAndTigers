//
//  TopViewController.h
//  LionsAndTigers
//
//  Created by Syed Amaanullah on 1/15/15.
//  Copyright (c) 2015 Syed Amaanullah. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HUDViewController.h"

@class TopViewController;

@protocol TopDelegate
-(void)topRevealButtonTapped;

@end

@interface TopViewController : UIViewController
-(void)showTigers;
-(void)showLions;

@property id<TopDelegate> delegate;

@end
