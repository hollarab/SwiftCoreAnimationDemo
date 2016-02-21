//
//  RepeatingAnimationViewController.swift
//  SwiftCoreAnimationDemo
//
//  Created by hollarab on 2/20/16.
//  Copyright © 2016 LameSauce Software. All rights reserved.
//

import UIKit

class RepeatingAnimationViewController: TapToDismissViewController {

    override func goTouched(sender: UIButton) {
        let animation = CABasicAnimation(keyPath: "cornerRadius")
        animation.fromValue = aLayer.cornerRadius
        animation.toValue = 50.0
        animation.repeatCount = 50
        animation.duration = 1.5
        animation.autoreverses = true
        
        aLayer.addAnimation(animation, forKey: "cornerRadius")
    }
    
}
