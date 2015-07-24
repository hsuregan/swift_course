//
//  ViewController.swift
//  Contacts
//
//  Created by Regan Hsu on 7/16/15.
//  Copyright (c) 2015 Regan Hsu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var nameLabel: UITextField!
    @IBOutlet var phoneNumberLabel: UITextField!
    
    
    var name:String?
    var phoneNumber:String?
    

    
    //textField is a data Type UITextField 
    
    func textFieldDidEndEditing(textField: UITextField) {
        NSLog("TEXTFIELDIDEDITING")
        if textField == self.nameLabel {
            self.name? = textField.text
            NSLog(self.name!);
        } else if textField == self.phoneNumberLabel {
            self.phoneNumber? = textField.text
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.phoneNumberLabel.text = self.phoneNumber;
        //self.nameLabel.text = self.name;
        self.nameLabel.delegate = self
        self.phoneNumberLabel.delegate = self
        //self.view.backgroundColor = UIColor.redColor()
        
        if let name = self.name {
            self.nameLabel.text = name
        }
        if let phoneNumber = self.phoneNumber {
            self.phoneNumberLabel.text = phoneNumber
        }
        

        NSLog("viewDidLoad")

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    


}

