//
//  ViewController.swift
//  IAd
//
//  Created by  HayaSuliman on ١٠ جما١، ١٤٣٧ هـ.
//  Copyright © ١٤٣٧ Omar'sGroup. All rights reserved.
//



import iAd





var backgroundMusicPlayer:AVAudioPlayer = AVAudioPlayer()


@IBOutlet var iadbannarView: ADBannerView?


override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Release any cached data, images, etc that aren't in use.
    
    
    self.canDisplayBannerAds = true
    self.iadbannarView?.delegate = self
    self.iadbannarView?.hidden = true
}


func bannerViewWillLoadAd(banner: ADBannerView!) {
    
}

func bannerViewDidLoadAd(banner: ADBannerView!) {
    
    self.iadbannarView?.hidden = false
    
}

func bannerViewActionDidFinish(banner: ADBannerView!) {
    
    
    
}
func bannerViewActionShouldBegin(banner: ADBannerView!, willLeaveApplication willLeave: Bool) -> Bool {
    
    return true
}

func bannerView(banner: ADBannerView!, didFailToReceiveAdWithError error: NSError!) {
    
    self.iadbannarView?.hidden = true
}

override func prefersStatusBarHidden() -> Bool {
    return true
}
}








