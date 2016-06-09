//
//  MainViewController.swift
//  SegmentedControl
//
//  Created by Steven Berard on 6/8/16.
//  Copyright © 2016 Event Farm. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var control: UIView!
    @IBOutlet weak var parentView: UIView!
    @IBOutlet var panGesture: UIPanGestureRecognizer!
    
    var priorX: CGFloat = 0.0

    @IBAction func userPannedView(sender: UIPanGestureRecognizer) {
        
        let touchPointX = sender.locationInView(parentView).x
        print(touchPointX)
        
        let delta = touchPointX * 7 / UIScreen.mainScreen().bounds.width
        
        if touchPointX > priorX {
            print("right")
            if control.frame.origin.x <= UIScreen.mainScreen().bounds.width {
                control.frame.origin.x += delta
            }
        } else if touchPointX < priorX {
            print("left")
            if control.frame.origin.x >= 0 {
                control.frame.origin.x -= delta
            }
        }
        
        priorX = touchPointX
        
    }
    

}
