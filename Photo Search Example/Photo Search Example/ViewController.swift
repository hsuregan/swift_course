//
//  ViewController.swift
//  Photo Search Example
//
//  Created by Regan Hsu on 7/29/15.
//  Copyright (c) 2015 Regan Hsu. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UISearchBarDelegate {
    
    var username:String = "clararockmore"
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    //viewDidAppear
    //animated: Bool
    
    override func viewWillAppear(animated: Bool)
    {
        
        
        
                // Do any additional setup after loading the view, typically from a nib.
        let manager = AFHTTPRequestOperationManager()
        
        manager.GET( "https://api.instagram.com/v1/tags/\(username)/media/recent?client_id=48133bfc6c8f46dd908b6afed6e98648",
            parameters: nil,
            success: { (operation: AFHTTPRequestOperation!,responseObject: AnyObject!) in
                println("SUCESS")
                //println("JSON: " + responseObject.description)
                if let dataArray = responseObject["data"] as? [AnyObject] {
                    var urlArray:[String] = []
                    for dataObject in dataArray {
                        if let imageURLString = dataObject.valueForKeyPath("images.standard_resolution.url") as? String {
                                urlArray.append(imageURLString)
                        }
                        //println("\(urlArray)\n")

                    }
                    self.scrollView.contentSize = CGSizeMake(320, 320 * CGFloat(dataArray.count))
                    for var i = 0; i < urlArray.count; i++ {
                        let imageView = UIImageView(frame: CGRectMake(0, 320*CGFloat(i), 320, 320))
                        imageView.setImageWithURL(NSURL(string: urlArray[i])!)
                        self.scrollView.addSubview(imageView)
                    }
                    
                    
                }

            },
            failure: { (operation: AFHTTPRequestOperation!,error: NSError!) in
                println("Error: " + error.localizedDescription)
        }) //completion blocks
        
        
        
        
        
        
        ////////////////NODE STUFF
        
        //post to your node server
        
        var params = [
            
            "FUCK":"nyu"
            
        ]
        
        
        

        
        manager.POST("http://localhost:3000/items",
            
            parameters: params,
            
            success: { (AFHTTPRequestOperation, AnyObject) -> Void in
                
                println("success!!!!")
                
            }) { (AFHTTPRequestOperation, NSError) -> Void in
                
                println("fail")
                
        }
        
        
        
        manager.GET( "http://localhost:3000/items/person/macaroni",
            
            parameters: nil,
            
            success: { (operation: AFHTTPRequestOperation!,responseObject: AnyObject!) in
                
                println("JSON: " + responseObject.description)
                
                if let results = responseObject[0] as? NSDictionary {
                    
                    if let title = results["title"] as? String {
                        
                        println(title)
                        //self.myName.text = title as String
                        
                        //self.myName.adjustsFontSizeToFitWidth = true
                        
                        
                        
                    }
                    
                }
                
            },
            
            failure: { (operation: AFHTTPRequestOperation!,error: NSError!) in
                
                println("Error: " + error.localizedDescription)
                
        })
        
        /////////////////////
        
        println("happen before")
        
    }
    
    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        println("ugh")
        username = searchBar.text
        println(username)
        for subview in self.scrollView.subviews {
            subview.removeFromSuperview()
        }
        searchBar.resignFirstResponder()
        
        //usually you don't do that
        viewWillAppear(true)

    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

