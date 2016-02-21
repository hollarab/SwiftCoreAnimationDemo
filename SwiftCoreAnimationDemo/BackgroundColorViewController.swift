//
//  BackgroundColorViewController.swift
//  SwiftCoreAnimationDemo
//
//  Created by hollarab on 2/20/16.
//  Copyright © 2016 LameSauce Software. All rights reserved.
//

import UIKit

class BackgroundColorViewController: TapToDismissViewController {

    override func goTouched(sender: UIButton) {
        
        aLayer.backgroundColor = UIColor.redColor().CGColor
 
        delay(1.0) {
            self.view.backgroundColor = UIColor.yellowColor()
        }
    }
    
}


