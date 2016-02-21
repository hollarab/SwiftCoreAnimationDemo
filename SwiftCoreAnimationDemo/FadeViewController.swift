//
//  FadeViewController.swift
//  SwiftCoreAnimationDemo
//
//  Created by hollarab on 2/20/16.
//  Copyright © 2016 LameSauce Software. All rights reserved.
//

import UIKit

class FadeViewController: TapToDismissViewController {

    var flipFlop = true
    
    override func goTouched(sender: UIButton) {
        goButton.enabled = false
        var waitTime = 1.0
        
        if flipFlop {
            aLayer.opacity = 0
        } else {
            let fadeAnimation = CABasicAnimation(keyPath: "opacity")
            fadeAnimation.fromValue = 1
            fadeAnimation.toValue = 0
            fadeAnimation.duration = 3.0
            waitTime = 3.5
            aLayer.addAnimation(fadeAnimation, forKey: "opacity")
            aLayer.opacity = 0
        }
        
        flipFlop = !flipFlop
        
        delay(waitTime) {
            self.aLayer.opacity = 1
            self.goButton.enabled = true
        }
    }
    
    
}
