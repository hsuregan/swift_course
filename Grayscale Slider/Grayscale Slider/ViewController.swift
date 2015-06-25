//
//  ViewController.swift
//  Grayscale Slider
//
//  Created by Regan Hsu on 6/24/15.
//  Copyright (c) 2015 Regan Hsu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func doSomething() {
        println("it works!")
        view.backgroundColor = UIColor.purpleColor()
    }

    @IBAction func sliderDidChangeValue(sender: UISlider) {
        println(sender.value)
        view.backgroundColor = UIColor(white: CGFloat(sender.value), alpha: 1)
        
    }

}

