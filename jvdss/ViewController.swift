//
//  ViewController.swift
//  jvdss
//
//  Created by Sumit on 3/14/17.
//  Copyright © 2017 Sumit Mukhija. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pulseView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        initPulseView()
        animatePulseView()
    }
    
    func initPulseView(){
        self.pulseView.alpha = 0.4
        self.pulseView.layer.cornerRadius = self.pulseView.frame.size.width/2
    }
    
    func animatePulseView(){
        UIView.animateWithDuration(2.0, animations: {
            self.pulseView.alpha = 0.2
            self.pulseView.transform = CGAffineTransformMakeScale(200, 200)
        }) { (success) in
            self.pulseView.transform = CGAffineTransformIdentity
            self.animatePulseView()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

