//
//  DemosTableViewController.swift
//  SwiftCoreAnimationDemo
//
//  Created by hollarab on 2/20/16.
//  Copyright © 2016 LameSauce Software. All rights reserved.
//

import UIKit

class DemosTableViewController: UITableViewController {
    
    // Craete a name for "Tuple Type", and name the values inside it
    typealias ControllerInfo = (name: String, controller: Void -> UIViewController)
    
    let demos:[ControllerInfo] = [
        ("Vanilla Tap", { return TapToDismissViewController() } ),
        ("Background color", { return BackgroundColorViewController() } ),
        ("Fade", { return FadeViewController() } ),
        ("Shadow", { return ShadowViewController() } ),
        ("Image", { return UseImageViewController() } ),
        ("Rotation", { return RotationViewController() } ),
        ("Sub Layer", { return SubLayerViewController() } ),
        ("Anchor", { return AnchorViewController() } ),
        ("Repeat / Reverse", { return RepeatingAnimationViewController() } ),
        ("Size", { return SizeViewController() } ),
        ("UIView based", { return UIViewExampleViewController() } ),
        ("Swap", { return SwapViewController() } )
    ]
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return demos.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        cell.textLabel?.text = demos[indexPath.row].name
        return cell
    }

    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        presentViewController(demos[indexPath.row].controller(), animated: true, completion: nil)
    }
    
}
