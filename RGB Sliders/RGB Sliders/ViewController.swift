//
//  ViewController.swift
//  RGB Sliders
//
//  Created by Regan Hsu on 7/5/15.
//  Copyright (c) 2015 Regan Hsu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var colorSquare: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateBackgroundColor()
        colorSquare.layer.borderColor = UIColor.blackColor().CGColor
        colorSquare.layer.borderWidth = 1
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //arguments don't matter because we can refer to the redSlider, greenSlider, and blueSlider directly
    @IBAction func updateBackgroundColor() {
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        
        //view.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
        colorSquare.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)

    }

}

