//
//  SizeViewController.swift
//  SwiftCoreAnimationDemo
//
//  Created by hollarab on 2/20/16.
//  Copyright © 2016 LameSauce Software. All rights reserved.
//

import UIKit

class SizeViewController: TapToDismissViewController {


    override func goTouched(sender: UIButton) {
        
        let animation = CABasicAnimation(keyPath: "bounds.size.width")
        animation.fromValue = aLayer.frame.size.width
        animation.toValue = 0
        animation.repeatCount = 50
        animation.duration = 1.5
        animation.autoreverses = true
        aLayer.addAnimation(animation, forKey: "bounds.size.width")
        
        
        let animation2 = CABasicAnimation(keyPath: "bounds.size.height")
        animation2.fromValue = aLayer.frame.size.height
        animation2.toValue = 0
        animation2.repeatCount = 50
        animation2.duration = 3
        animation2.autoreverses = true
        aLayer.addAnimation(animation2, forKey: "bounds.size.height")
        
    }
}
