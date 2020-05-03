//
//  GADBannerViewController.swift
//  SwiftUIGoogleAdsSample
//
//  Created by Daisuke TONOSAKI on 2020/05/03.
//  Copyright © 2020 Daisuke TONOSAKI. All rights reserved.
//

import UIKit

import GoogleMobileAds


class GADBannerViewController: UIViewController {
    
    let bannerView = GADBannerView(adSize: kGADAdSizeBanner)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // This app using sample id.
        // https://developers.google.com/admob/ios/test-ads#sample_ad_units
        bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        
        bannerView.delegate = self
        bannerView.translatesAutoresizingMaskIntoConstraints = false
        bannerView.rootViewController = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        bannerView.load(GADRequest())
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        bannerView.removeFromSuperview()
    }
    
}



// MARK: - GADBannerViewDelegate
extension GADBannerViewController: GADBannerViewDelegate {
    func adViewDidReceiveAd(_ bannerView: GADBannerView) {
        
        guard let viewController = bannerView.rootViewController else {
            return
        }
        
        guard bannerView.superview == nil else {
            return
        }
        
        
        viewController.view.addSubview(bannerView)
        viewController.view.bringSubviewToFront(bannerView)
        
        viewController.view.addConstraints([
            NSLayoutConstraint(item: bannerView,
                               attribute: .bottom,
                               relatedBy: .equal,
                               toItem: viewController.view.safeAreaLayoutGuide,
                               attribute: .bottom,
                               multiplier: 1,
                               constant: 0),
            NSLayoutConstraint(item: bannerView,
                               attribute: .centerX,
                               relatedBy: .equal,
                               toItem: viewController.view,
                               attribute: .centerX,
                               multiplier: 1,
                               constant: 0)
        ])
        
    }
    
    func adView(_ bannerView: GADBannerView,
                didFailToReceiveAdWithError error: GADRequestError) {
        print(error.localizedDescription)
    }
    
    func adViewWillPresentScreen(_ bannerView: GADBannerView) {
    }
    
    func adViewWillDismissScreen(_ bannerView: GADBannerView) {
    }
    
    func adViewDidDismissScreen(_ bannerView: GADBannerView) {
    }
    
    func adViewWillLeaveApplication(_ bannerView: GADBannerView) {
    }
}

