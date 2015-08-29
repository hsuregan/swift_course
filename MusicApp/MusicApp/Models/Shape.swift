//
//  Shape.swift
//  MusicApp
//
//  Created by Regan Hsu on 8/19/15.
//  Copyright (c) 2015 Regan Hsu. All rights reserved.
//

import UIKit

class Shape: UIView {
    
    var color:UIColor
    init(color:UIColor) {
        self.color = color
        super.init(frame: CGRectZero)
        self.backgroundColor = color
    }
    
    //what's going on over here?
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func getarea() -> Double {
        return 0;
    }
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
}

class Rectangle: Shape {
    var width:Int
    var height:Int
    init(width: Int, height: Int, color: UIColor) {
        self.width = width
        self.height = height
        super.init(color: color)
        self.frame.size = CGSize(width: width, height: height)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func getarea() -> Double {
        return (Double(width*height))
    }
}
