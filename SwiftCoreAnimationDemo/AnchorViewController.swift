//
//  AnchorViewController.swift
//  SwiftCoreAnimationDemo
//
//  Created by hollarab on 2/21/16.
//  Copyright © 2016 LameSauce Software. All rights reserved.
//

import UIKit

class AnchorViewController: SubLayerViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        aLayer.anchorPoint = CGPointMake(0,0)
    }
}
