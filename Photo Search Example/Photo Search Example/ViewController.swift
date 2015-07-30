//
//  ViewController.swift
//  Photo Search Example
//
//  Created by Regan Hsu on 7/29/15.
//  Copyright (c) 2015 Regan Hsu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let manager = AFHTTPRequestOperationManager()
        
        manager.GET( "https://api.instagram.com/v1/tags/clararockmore/media/recent?client_id=48133bfc6c8f46dd908b6afed6e98648",
            parameters: nil,
            success: { (operation: AFHTTPRequestOperation!,responseObject: AnyObject!) in
                println("JSON: " + responseObject.description)
            },
            failure: { (operation: AFHTTPRequestOperation!,error: NSError!) in
                println("Error: " + error.localizedDescription)
        })
        var params = [
            "title":"helloIphone"
        ]
        
        //post to your node server
        manager.POST("http://localhost:3000/items",
            parameters: params,
            success: { (AFHTTPRequestOperation, AnyObject) -> Void in
                println("success!")
            }) { (AFHTTPRequestOperation, NSError) -> Void in
                println("fail")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

