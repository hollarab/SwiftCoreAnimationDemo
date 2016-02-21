//
//  RotationViewController.swift
//  SwiftCoreAnimationDemo
//
//  Created by hollarab on 2/20/16.
//  Copyright © 2016 LameSauce Software. All rights reserved.
//

import UIKit

class RotationViewController: TapToDismissViewController {
    
    override func goTouched(sender: UIButton) {
        let rotateAnimation = CABasicAnimation(keyPath: "transform.rotation")
        rotateAnimation.fromValue = 0.0
        rotateAnimation.toValue = CGFloat(M_PI * 0.3)
        rotateAnimation.duration = 1.0
        rotateAnimation.repeatCount = 1
        rotateAnimation.delegate = self
        
        // Set these two this way to get rotation to "stick"
        rotateAnimation.removedOnCompletion = false
        rotateAnimation.fillMode = kCAFillModeForwards
        
        aLayer.addAnimation(rotateAnimation, forKey: nil)
    }
    
}



extension RotationViewController {
    
    override func animationDidStart(anim: CAAnimation) {
        print("animation started")
    }
    
    override func animationDidStop(anim: CAAnimation, finished flag: Bool) {
        print("animation done")
    }
}