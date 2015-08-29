//
//  ViewController.swift
//  MusicApp
//
//  Created by Regan Hsu on 8/11/15.
//  Copyright (c) 2015 Regan Hsu. All rights reserved.
//

import AVFoundation
import AssetsLibrary
import MediaPlayer
import UIKit


class ViewController: UIViewController, FDWaveformViewDelegate {
    
    var arr = [2.4,1,3,8,2,3.4,1,9,11,12,3,4]
    var audioPlayer = AVAudioPlayer()
    var radio = AVPlayer()
    var streamRadio:MPMoviePlayerController!
    var url:NSURL = NSURL(string: "http://stream.uclaradio.com:8000/listen")!
    
    @IBOutlet weak var waveform: FDWaveformView!
    
    var length = 0;
    var myLibrary = ALAssetsLibrary()
    @IBOutlet weak var AnimateBox: IntensityIndicator!
    @IBOutlet var background: UIView!
    @IBOutlet weak var Bar: UIView!
    @IBOutlet weak var ScrollBar: UIScrollView!

    @IBOutlet weak var drawingBox: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.Bar.center = self.background.center
        //var myLibrary = AVAsset()
        // Do any additional setup after loading the view, typically from a nib.
        //var myAsset = myLibrary.assetForURL(_URL:"http://stream.uclaradio.com:8000/listen”)
        
        var alertSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("05 The River", ofType: "mp3")!)
        
        println(alertSound)
        
        // Removed deprecated use of AVAudioSessionDelegate protocol
        
        AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback, error: nil)
        AVAudioSession.sharedInstance().setActive(true, error: nil)
        
        var error:NSError?
        audioPlayer = AVAudioPlayer(contentsOfURL: alertSound, error: &error)
        //audioPlayer.prepareToPlay()
        //audioPlayer.play()
        println(audioPlayer.duration)
        
        
        //set it equal to far you want it to be able to scroll
        //if you add more stuff, make sure to increase the right hand side
        self.ScrollBar.contentSize.width = self.background.bounds.size.width * 2
        //self.ScrollBar.autoresizingMask = UIViewAutoresizing.FlexibleWidth | UIViewAutoresizing.FlexibleHeight
        
        //drawBlueBoxes(3);
        
        //////////////////
        ///WAVEFORM API
        //////////////////
        
        var filePath = NSString(string: NSBundle.mainBundle().pathForResource("Submarine", ofType: "aiff")!)
        var fileURL = NSURL(fileURLWithPath: filePath as! String)

        self.waveform.delegate = self
        self.waveform.audioURL = fileURL
        //self.waveform.progressSamples = 10000;

        println(self.waveform.totalSamples)

        self.waveform.doesAllowScrubbing = true
        //self.waveform.doesAllowScroll = true

        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func waveformViewDidRender(waveformView:FDWaveformView) {
        self.waveform.alpha = 1.0
    }
    
    func drawBlueBoxes(x: Int) {
        let imageSize = CGSize(width: 100,height: 100)
        UIGraphicsBeginImageContext(imageSize)
        let context = UIGraphicsGetCurrentContext()
        CGContextSetFillColorWithColor(context, UIColor.blackColor().CGColor)
        
        for i in 0...10 {
            CGContextFillRect(context, CGRectMake(CGFloat(i*2), 0,1,10))
            CGContextFillRect(context, CGRectMake(CGFloat(i*3), 0,1,15))

        }
        
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        drawingBox.image = newImage

        
            //drawBlueBoxes(i*2)


    }
    
    func getdBs() {
        let songAsset: AVAsset! = AVAsset.assetWithURL(url) as! AVAsset
        let songTrack = songAsset.tracks[0]
        //reads the asset
        //create an NS error pointer object
        //let reader = AVAssetReader(songAsset, NSErrorPointer)
        
        //reader.startReading()
    }
    
    
    @IBAction func pause() {
        //in order to stop downoad of data, stop stream totally:
        self.streamRadio.pause()
        //self.streamRadio = nil;
    }
    
    @IBAction func play() {
        self.streamRadio = MPMoviePlayerController(contentURL: url)
        self.streamRadio.play()
//        for i in 0...200 {
//            println(audioPlayer.peakPowerForChannel(Int(i)))
//        }
    }
    
    @IBAction func toTheRight() {
//problem here
        UIView.animateWithDuration(0.5, animations: {
            self.Bar.center.x += 100
        })
    }
    
    //how do I detect if something is off screen 
    
    @IBAction func toTheLeft() {
//problem here
        UIView.animateWithDuration(0.5, animations: {
            self.Bar.center.x -= 100
        })
    }
    

    
    func drawBoxes(arr: [Double]){
        
        //for loop to add rectangle for each intensity/volume thing
        for i in 0...arr.count-1 {
            
            //rectangles
            var rectangle:Rectangle = Rectangle(width: 2, height: Int(arr[i]*10), color: UIColor.blueColor())
            var rect:Rectangle = Rectangle(width: 2, height: Int(arr[i]*10), color: UIColor.blueColor())

            //zach - frame is relative to parent
            //modify frame, changes wrt parent view
            self.Bar.addSubview(rectangle)
            self.ScrollBar.addSubview(rect)

            self.length += 5
            //WHY can't i snap these to the center of the rectangle?
            //zach - drawing libraries, lies lower than uiviews
            
            
            rectangle.center = CGPoint(x: self.length, y: Int(self.Bar.frame.height/2))
            rect.center = CGPoint(x: self.length, y: Int(self.ScrollBar.frame.height/2))
            
        }
        
    }
    
    @IBAction func move() {
        
        //self.background.backgroundColor = (self.view.backgroundColor == UIColor.blackColor()) ? UIColor.yellowColor() : UIColor.blackColor()
        //println("move()")
        drawBoxes(arr)
        

    }
    


}

