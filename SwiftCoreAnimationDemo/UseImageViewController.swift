//
//  UseImageViewController.swift
//  SwiftCoreAnimationDemo
//
//  Created by hollarab on 2/20/16.
//  Copyright © 2016 LameSauce Software. All rights reserved.
//

import UIKit

class UseImageViewController: TapToDismissViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let image = UIImage(named: "beeltes")
        
        aLayer.contents = image!.CGImage
        aLayer.contentsGravity = kCAGravityResizeAspect
        
        goButton.hidden = true
    }

}
