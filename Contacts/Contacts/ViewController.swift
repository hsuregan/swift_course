//
//  ViewController.swift
//  Contacts
//
//  Created by Regan Hsu on 7/16/15.
//  Copyright (c) 2015 Regan Hsu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var nameField: UITextField!
    @IBOutlet var phoneNumberField: UITextField!
    
    var contact:Contact?
    
    

    
    //textField is a data Type UITextField 
    
    func textFieldDidEndEditing(textField: UITextField) {
        NSLog("TEXTFIELDIDEDITING")
        if textField == self.nameField {
            //NSLog(self.name!);
            self.contact?.name = textField.text
        } else if textField == self.phoneNumberField {
            self.contact?.phoneNumber = textField.text
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.phoneNumberField.text = self.phoneNumber;
        //self.nameField.text = self.name;
        //self.nameField.delegate = self
        //self.phoneNumberField.delegate = self
        //self.view.backgroundColor = UIColor.redColor()
       
//        NSLog("viewDidLoad")
//
//        self.nameField.text = self.contact?.name;
//        self.phoneNumberField.text = self.contact?.phoneNumber;
//        NSLog("viewDidLoad")

        
        if let contact = self.contact {
            if let name = contact.name{
                self.nameField.text = name
                NSLog("UGH!")
            }
    
            
            if let phoneNumber = contact.phoneNumber {
                self.phoneNumberField.text = phoneNumber
            }
        }


        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    


}

