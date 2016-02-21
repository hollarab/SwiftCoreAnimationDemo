//
//  SwapViewController.swift
//  SwiftCoreAnimationDemo
//
//  Created by hollarab on 2/21/16.
//  Copyright © 2016 LameSauce Software. All rights reserved.
//

import UIKit

class SwapViewController: TapToDismissViewController {

    override func goTouched(sender: UIButton) {

        let layer = CALayer()
        layer.backgroundColor = UIColor.redColor().CGColor
        layer.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        layer.setIdealCornerRadius()
        layer.position = aLayer.position
        layer.hidden = true
        view.layer.addSublayer(layer)
        
        let transition = CATransition()
        transition.startProgress = 0
        transition.endProgress = 1
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFromRight
        transition.duration = 0.25
        
        aLayer.addAnimation(transition, forKey: "transition")
        layer.addAnimation(transition, forKey: "transition")
        
        aLayer.hidden = true
        layer.hidden = false
    }
    
}
