//
//  ViewController.swift
//  Web Service Example
//
//  Created by Regan Hsu on 7/24/15.
//  Copyright (c) 2015 Regan Hsu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //@IBOutlet weak var
    
    @IBOutlet weak var myNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let manager = AFHTTPRequestOperationManager()
        manager.GET("http://graph.facebook.com/bobdylan",
            parameters: nil,
            success: {(operation: AFHTTPRequestOperation!, responseObject: AnyObject!)
                in println("Response: " + responseObject.description)
            },
            failure: {(operation: AFHTTPRequestOperation!, error: NSError!) in
                println("Error: " + error.localizedDescription)
            })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

