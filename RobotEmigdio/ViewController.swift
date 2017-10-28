//
//  ViewController.swift
//  RobotEmigdio
//
//  Created by EMIGDIO CAMACHO CALDERON on 26/10/17.
//  Copyright © 2017 EMIGDIO CAMACHO CALDERON. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logo: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        UIView.animate(withDuration: 1.5, delay: 0.0, options: UIViewAnimationOptions.curveEaseOut, animations: {
            
            self.logo.frame.size.height = 1000
             self.logo.frame.size.width = 1000
            
            self.view.layoutIfNeeded()
        }, completion:  {_ in
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "Home")
           
           
            self.show(vc as! HomeViewController, sender: vc)
            
        })
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

