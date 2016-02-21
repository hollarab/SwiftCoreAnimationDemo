//
//  SubLayerViewController.swift
//  SwiftCoreAnimationDemo
//
//  Created by hollarab on 2/20/16.
//  Copyright © 2016 LameSauce Software. All rights reserved.
//

import UIKit

class SubLayerViewController: TapToDismissViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let layer = CALayer()
        layer.backgroundColor = UIColor.redColor().CGColor
        layer.frame = CGRectInset(aLayer.bounds, 10, 20)
        aLayer.addSublayer(layer)
    }
    
    override func goTouched(sender: UIButton) {
        let rotateAnimation = CABasicAnimation(keyPath: "transform.rotation")
        rotateAnimation.fromValue = 0.0
        rotateAnimation.toValue = CGFloat(M_PI * 2.0)
        rotateAnimation.duration = 5.0
        rotateAnimation.repeatCount = 1
        rotateAnimation.removedOnCompletion = false
        rotateAnimation.fillMode = kCAFillModeForwards
        
        aLayer.addAnimation(rotateAnimation, forKey: nil)

    }
}
