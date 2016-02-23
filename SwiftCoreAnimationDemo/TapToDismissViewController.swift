//
//  TapToDismissViewController.swift
//  SwiftCoreAnimationDemo
//
//  Created by hollarab on 2/20/16.
//  Copyright © 2016 LameSauce Software. All rights reserved.
//

import UIKit

class TapToDismissViewController: UIViewController {

    var aLayer:CALayer!
    var goButton:UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let tap = UITapGestureRecognizer(target: self, action: "onTap")
        view.addGestureRecognizer(tap)
        view.backgroundColor = .whiteColor()
        
        let buttonOne = UIButton(frame: CGRect(x: 5, y: 5, width: 75, height: 42))
        buttonOne.layer.setIdealCornerRadius()
        buttonOne.setTitle("GO", forState: .Normal)
        buttonOne.addTarget("self", action: "goTouched:", forControlEvents: .TouchUpInside)
        buttonOne.backgroundColor = UIColor.greenColor()
        self.view.addSubview(buttonOne)

        goButton = buttonOne
        
        
        aLayer = CALayer()
        aLayer.backgroundColor = UIColor.purpleColor().CGColor
        aLayer.frame = CGRect(x: 10, y: 10, width: 80, height: 80)
        aLayer.position = CGPointMake(CGRectGetMidX(view.bounds), CGRectGetMidY(view.bounds))
        view.layer.addSublayer(aLayer)

    }
    
    func onTap() {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func goTouched(sender:UIButton) {
    }
}


// http://stackoverflow.com/questions/24034544/dispatch-after-gcd-in-swift/24318861#24318861
func delay(delay:Double, closure:()->()) {
    dispatch_after(
        dispatch_time(
            DISPATCH_TIME_NOW,
            Int64(delay * Double(NSEC_PER_SEC))
        ),
        dispatch_get_main_queue(), closure)
}


extension CALayer {
    func setIdealCornerRadius() {
        self.cornerRadius = (10/57) * min(self.frame.size.height, self.frame.size.width)
    }
}






