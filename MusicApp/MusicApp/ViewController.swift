//
//  ViewController.swift
//  MusicApp
//
//  Created by Regan Hsu on 8/11/15.
//  Copyright (c) 2015 Regan Hsu. All rights reserved.
//

import AVFoundation
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var myLibrary = AVAsset()
        // Do any additional setup after loading the view, typically from a nib.
        var myAsset = myLibrary.assetForURL(_URL:"http://stream.uclaradio.com:8000/listen”)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

