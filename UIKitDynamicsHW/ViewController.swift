//
//  ViewController.swift
//  UIKitDynamicsHW
//
//  Created by Milad  on 9/11/16.
//  Copyright © 2016 Milad . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var _animator : UIDynamicAnimator!
    var _gravity : UIGravityBehavior!
    var _collision : UICollisionBehavior!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self._animator = UIDynamicAnimator(referenceView: self.view)
        self._gravity = UIGravityBehavior()
        self._collision = UICollisionBehavior()
        
        self._animator.addBehavior(_gravity)
        self._collision.translatesReferenceBoundsIntoBoundary = true
        self._animator.addBehavior(_collision)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        
    }

    @IBAction func createAndDropButtonPressed(sender: AnyObject) {
        
        let ball : UIView = UIView(frame: CGRect(x: self.view.center.x, y: 0.0, width: 50, height: 50))
        
        ball.layer.cornerRadius = 25
        ball.backgroundColor = UIColor.redColor()
        
        self.view.addSubview(ball)
        self._collision.addItem(ball)
        self._gravity.addItem(ball)
        
    }

}

