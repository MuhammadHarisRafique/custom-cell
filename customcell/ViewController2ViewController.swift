//
//  ViewController2ViewController.swift
//  customcell
//
//  Created by Mac on 3/17/16.
//  Copyright © 2016 Mac. All rights reserved.
//

import UIKit

class ViewController2ViewController: UIViewController {
    var imagefor:UIImage?
    @IBOutlet weak var imgeviewforphoto: UIImageView!
    
       override func viewDidLoad() {
        super.viewDidLoad()

        self.imgeviewforphoto.image = imagefor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
}
