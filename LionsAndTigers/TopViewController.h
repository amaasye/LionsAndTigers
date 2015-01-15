//
//  TopViewController.h
//  LionsAndTigers
//
//  Created by Syed Amaanullah on 1/15/15.
//  Copyright (c) 2015 Syed Amaanullah. All rights reserved.
//

#import <UIKit/UIKit.h>
@class TopViewController;

@protocol TopDelegate
-(void)topRevealButtonTapped: (TopViewController *)top;

@end

@interface TopViewController : UIViewController

@property id<TopDelegate> delegate;

@end
