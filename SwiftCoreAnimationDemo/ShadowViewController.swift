//
//  ShadowViewController.swift
//  SwiftCoreAnimationDemo
//
//  Created by hollarab on 2/20/16.
//  Copyright © 2016 LameSauce Software. All rights reserved.
//

import UIKit

class ShadowViewController: TapToDismissViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        aLayer.setIdealCornerRadius()
        
        aLayer.borderColor = UIColor.blackColor().CGColor
        aLayer.borderWidth = 3.0
        
        aLayer.shadowOpacity = 0.5
        aLayer.shadowOffset = CGSize(width:5, height:5)
        
        
    }
    
    override func goTouched(sender: UIButton) {
        aLayer.shadowColor = UIColor.orangeColor().CGColor
    }
    
}