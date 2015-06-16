//: Playground - noun: a place where people can play

import UIKit

class Shape {
    var color:UIColor
    init(color:UIColor) {
        self.color = color
    }
}

class Circle: Shape {
    var radius:Int
    init(radius:Int, color:UIColor) {
        self.radius = radius
        super.init(color: color)
    }
}

class Square: Shape {
    var width: Int
    init(width:Int, color:UIColor){
        self.width = width
        super.init(color: color)
    }
}

var circle:Circle = Circle(radius: 5, color: UIColor.redColor());

//circle.color;