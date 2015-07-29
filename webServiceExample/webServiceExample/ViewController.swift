//
//  ViewController.swift
//  WebServiceExample
//
//  Created by Regan Hsu on 7/29/15.
//  Copyright (c) 2015 Regan Hsu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let manager = AFHTTPRequestOperationManager()
        
        manager.GET( "http://api.randomuser.me/",
            parameters: nil,
            success: { (operation: AFHTTPRequestOperation!,responseObject: AnyObject!) in
                println("Response: " + responseObject.description)
                if let nationality = responseObject["nationality"] as? String {
                    self.myNameLabel.text = nationality
                }
//                let results = responseObject["results"]
                
//                if let jsonResult = responseObject as? Dictionary<String, AnyObject> {
//                    // do whatever with jsonResult
//                    myNameLabel.text = jsonResult["user"]["cell"]
//                }

//                for(index:String, subJson: JSON) in results {
//                    let user: AnyObject = subJson["user"].object
//                    if let phoneNumber = user["cell"] as? string {
//                        myNameLabel.text = phoneNumber
//                    }
//                }
 
            },
            failure: { (operation: AFHTTPRequestOperation!,error: NSError!) in
                println("Error: " + error.localizedDescription)
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

