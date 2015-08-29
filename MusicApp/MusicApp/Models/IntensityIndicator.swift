//
//  IntensityIndicator.swift
//  MusicApp
//
//  Created by Regan Hsu on 8/19/15.
//  Copyright (c) 2015 Regan Hsu. All rights reserved.
//

import UIKit

class IntensityIndicator: UIButton {

    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    //override func drawRect(rect: CGRect) {
        //var path = UIBezierPath(ovalInRect: rect)
        //UIColor.greenColor().setFill()
        //path.fill()
    //}
    
    override func drawRect(rect: CGRect) {
        var path = UIBezierPath(rect: rect)
        UIColor.greenColor().setFill()
        path.fill()
    }
    
    //write a function that will shift the view some pixels to the left


}
