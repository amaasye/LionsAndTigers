//
//  HUDViewController.h
//  LionsAndTigers
//
//  Created by Syed Amaanullah on 1/15/15.
//  Copyright (c) 2015 Syed Amaanullah. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol HUDDelegate


@end

@interface HUDViewController : UIViewController
-(void)tigersButtonTapped;
-(void)lionsButtonTapped;

@end
