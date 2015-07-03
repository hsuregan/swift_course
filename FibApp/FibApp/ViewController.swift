//
//  ViewController.swift
//  FibApp
//
//  Created by Regan Hsu on 7/2/15.
//  Copyright (c) 2015 Regan Hsu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //what do the exclamations stand for again? - haven't decided?
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

//    @IBAction func updateFibonacciSequence (nItems: UISlider, includeZero: UISwitch) {
//        
//        numberOfItemsSlider = nItems
//        includesZeroSwitch = includeZero
//        
//        //Recall, in Swift, when passing stuff into a function, you must specify which argument it is arg1:x ...
//        fibonacciSequence = FibonacciSequence(numberOfItemsInSequence:UInt(numberOfItemsSlider.value), includesZero:Bool(includesZeroSwitch.on));
//
//
//    }
    
    @IBAction func updateFibonacciSequence () {
        
        //Recall, in Swift, when passing stuff into a function, you must specify which argument it is arg1:x ...
        fibonacciSequence = FibonacciSequence(numberOfItemsInSequence:UInt(numberOfItemsSlider.value), includesZero:Bool(includesZeroSwitch.on));
        numberOfItemsLabel.text = String(UInt(numberOfItemsSlider.value)); //modify contents of numberOfItems
        textView.text = String(fibonacciSequence.values.description);
        
        
        
        
        
        
        
        
    }

    
    


}

