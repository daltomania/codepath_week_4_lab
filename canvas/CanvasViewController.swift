//
//  CanvasViewController.swift
//  canvas
//
//  Created by Will Dalton on 9/17/15.
//  Copyright © 2015 daltomania. All rights reserved.
//

import UIKit

class CanvasViewController: UIViewController {
    
    var trayOriginalCenter: CGPoint!

    @IBAction func onTrayPanGesture(sender: UIPanGestureRecognizer) {
        let location = sender.locationInView(view)
        if (sender.state == UIGestureRecognizerState.Began) {
            trayOriginalCenter = trayView.center
        } else if (sender.state == UIGestureRecognizerState.Changed) {
            trayView.center.y = location.y
        } else if (sender.state == UIGestureRecognizerState.Ended ) {
        }
    }
    
    @IBOutlet weak var trayView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
