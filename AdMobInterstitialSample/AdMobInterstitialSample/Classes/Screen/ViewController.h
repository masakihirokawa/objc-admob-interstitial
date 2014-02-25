//
//  ViewController.h
//  AdMobInterstitialSample
//
//  Created by Masaki Hirokawa on 2014/02/25.
//  Copyright (c) 2014 Masaki Hirokawa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GADInterstitial.h"

@interface ViewController : UIViewController <GADInterstitialDelegate> {
    GADInterstitial *interstitial_;
}

@end
