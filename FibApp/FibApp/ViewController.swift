//
//  ViewController.swift
//  FibApp
//
//  Created by Regan Hsu on 7/2/15.
//  Copyright (c) 2015 Regan Hsu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //what do the exclamations stand for again?
    //weak var?
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var includesZeroSwitch: UISwitch!
    @IBOutlet weak var includesZeroLabel: UILabel!
    @IBOutlet weak var numberOfItemsLabel: UILabel!
    @IBOutlet weak var numberOfItemsSlider: UISlider!
    
    var fibonacciSequence = FibonacciSequence(numberOfItemsInSequence: 2, includesZero: true)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func updateFibonacciSequence () {
        
    }
    
    


}

