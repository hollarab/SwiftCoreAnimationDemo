//
//  UIViewExampleViewController.swift
//  SwiftCoreAnimationDemo
//
//  Created by hollarab on 2/20/16.
//  Copyright © 2016 LameSauce Software. All rights reserved.
//

import UIKit

class UIViewExampleViewController: TapToDismissViewController {

    var aView:UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        aLayer.removeFromSuperlayer()
        
        aView = UIView(frame: CGRectMake(0, 0, 100, 100) )
        aView.backgroundColor = UIColor.orangeColor()
        aView.center = view.center
        view.addSubview(aView)
    }

    
    
/**
Rules for Modifying Layers in iOS
     
Because iOS views always have an underlying layer, the UIView class itself derives most of its data from the 
     layer object directly. As a result, changes you make to the layer are automatically reflected by the view 
     object as well. This behavior means that you can use either the Core Animation or UIView interfaces to 
     make your changes.

If you want to use Core Animation classes to initiate animations, you must issue all of your Core Animation 
     calls from inside a view-based animation block. The UIView class disables layer animations by default but 
     reenables them inside animation blocks. So any changes you make outside of an animation block are not 
     animated. Listing 3-5 shows an example of how to change a layer’s opacity implicitly and its position 
     explicitly. In this example, the myNewPosition variable is calculated beforehand and captured by the 
     block. Both animations start at the same time but the opacity animation runs with the default timing while 
     the position animation runs with the timing specified in its animation object.
*/
    override func goTouched(sender: UIButton) {
        
        let newPosition = CGPoint(x: 50, y: 75)
        
        UIView.animateWithDuration(1.0) { () -> Void in
            self.aView.layer.opacity = 0.0
            
            let animation = CABasicAnimation(keyPath: "position")
            animation.fromValue = NSValue(CGPoint:self.aView.layer.position)
            animation.toValue = NSValue(CGPoint:newPosition)
            animation.duration = 4.0
            self.aView.layer.addAnimation(animation, forKey: "position")
        }

    }
}
