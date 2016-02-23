//
//  SubLayerViewController.swift
//  SwiftCoreAnimationDemo
//
//  Created by hollarab on 2/20/16.
//  Copyright © 2016 LameSauce Software. All rights reserved.
//

import UIKit

class SubLayerViewController: RotationViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let layer = CALayer()
        layer.backgroundColor = UIColor.redColor().CGColor
        layer.frame = CGRectInset(aLayer.bounds, 10, 20)
        aLayer.addSublayer(layer)
    }
}
