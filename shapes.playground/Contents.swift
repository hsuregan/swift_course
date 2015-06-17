//: Playground - noun: a place where people can play

import UIKit

class Shape {
    var color:UIColor
    init(color:UIColor) {
        self.color = color
    }
    func getarea() -> Double {
        return 0;
    }
}

class Circle: Shape {
    var radius:Int
    
    init(radius:Int, color:UIColor) {
        self.radius = radius
        super.init(color: color)
    }
    
    override func getarea() -> Double {
        return M_PI*Double(radius)*Double(radius);
    }
}

class Square: Shape {
    var width: Int
    init(width:Int, color:UIColor){
        self.width = width
        super.init(color: color)
    }
    
    override func getarea() -> Double {
        return Double(width)*Double(width)
    }
}

//why do I have to 'circle:Circle'?
var circle:Circle = Circle(radius: 5, color: UIColor.redColor());
var square:Square = Square(width: 50, color: UIColor.blueColor());
//circle.color;

var cir = Circle(radius: 5, color: UIColor.redColor());

//practice
class Animal {
    var color:UIColor
    var kingdom = [String]();
    init(color:UIColor, feature:[String]){
        self.color = color;
        self.kingdom = feature;
    }
}

var an:Animal = Animal(color: UIColor.redColor(), feature:["bleh", "huh"]);
var ugh = [String]();

ugh += ["ugh", "lol"]




