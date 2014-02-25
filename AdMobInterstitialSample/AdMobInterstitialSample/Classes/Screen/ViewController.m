//
//  ViewController.m
//  AdMobInterstitialSample
//
//  Created by Masaki Hirokawa on 2014/02/25.
//  Copyright (c) 2014 Masaki Hirokawa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark -

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // AdMobのインタースティシャル広告読み込み
    [self loadAdMobIntersBanner];
}

#pragma mark - AdMob Inters Banner

// AdMobのインタースティシャル広告読み込み
- (void)loadAdMobIntersBanner
{
    interstitial_ = [[GADInterstitial alloc] init];
    interstitial_.adUnitID = @"ca-app-pub-0667784050147760/7591603826";
    interstitial_.delegate = self;
    GADRequest *request = [GADRequest request];
    [interstitial_ loadRequest:request];
}

// AdMobのインタースティシャル広告表示
- (void)interstitialDidReceiveAd:(GADInterstitial *)ad
{
    [interstitial_ presentFromRootViewController:self];
}

@end
