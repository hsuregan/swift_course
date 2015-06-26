//
//  ViewController.swift
//  FibonacciApp
//
//  Created by Regan Hsu on 6/25/15.
//  Copyright (c) 2015 Regan Hsu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var fibonacciSequence = FibonacciSequence(numberOfItemsInSequence: 2, includesZero: true)


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


