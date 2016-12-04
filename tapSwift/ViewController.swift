//
//  ViewController.swift
//  tapSwift
//
//  Created by John Mac on 12/3/16.
//  Copyright © 2016 John Wetters. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var imageView: UIImageView!
    
    
    //load pictures
    
    let tap = UIImage.init(named: "tap")
    var count = 0

    @IBAction func getTap(_ sender: UITapGestureRecognizer) {
        count += 1
        print("this is a tap \(count)")
         let location = sender.location(in: self.view)
        
        print(location)
        self.imageView.image = tap
        self.imageView.center = location
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

