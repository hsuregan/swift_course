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
    
    


    //inheritance
    // like main()
    // but every viewcontroller has it
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //hard time getting this..
        let defaults = NSUserDefaults.standardUserDefaults()
        redSlider.value = defaults.floatForKey("red")
        greenSlider.value = defaults.floatForKey("green")
        blueSlider.value = defaults.floatForKey("blue")
        
        // Do any additional setup after loading the view, typically from a nib.
        updateBackgroundColor()
        colorSquare.layer.borderColor = UIColor.blackColor().CGColor
        colorSquare.layer.borderWidth = 1
        
        //explain whats happening more thoroughlly...

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
//    //segue.identifier (the identifier in this case is linking the front page to the colored page)
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        
        //so every segue from this viewcontroller has this?
        if(segue.identifier == "openColor") {
            //what exaclty does this do???? (as!)
            //newViewController is like dereferenced pointer
            let newViewController = segue.destinationViewController as! UIViewController
            newViewController.view.backgroundColor = colorSquare.backgroundColor
        }
    }
    
    //arguments don't matter because we can refer to the redSlider, greenSlider, and blueSlider directly
    @IBAction func updateBackgroundColor() {
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        
        //view.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
        colorSquare.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
        
        
        //....what?
        let defaults = NSUserDefaults.standardUserDefaults()  //1
        defaults.setFloat(redSlider.value, forKey: "red")   //2
        defaults.setFloat(greenSlider.value, forKey: "green")
        defaults.setFloat(blueSlider.value, forKey: "green")
        defaults.synchronize()    //3

    }

}

