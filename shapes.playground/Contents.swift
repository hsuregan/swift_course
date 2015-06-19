//: Playground - noun: a place where people can play


import UIKit
//what's this?
import XCPlayground

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
}

class Square: Shape {
    var width: Int
    init(width:Int, color:UIColor){
        self.width = width
        super.init(color: color)
        //Still unsure what the point this is
        self.frame.size = CGSize(width: width, height: width)
        
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func getarea() -> Double {
        return Double(width)*Double(width)
    }
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

class RoundRectangle: Rectangle {
    
    init(width: Int, height: Int, color: UIColor, corner_rad: Int ) {
        super.init(width:width, height:height,color: color)
        self.layer.cornerRadius = CGFloat(corner_rad)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class Circle: Shape {
    var radius:Int
    
    init(radius:Int, color:UIColor) {
        self.radius = radius
        super.init(color: color)
        self.frame.size = CGSize(width: 2*radius, height: 2*radius)
        self.layer.cornerRadius = CGFloat(radius)
        
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func getarea() -> Double {
        return M_PI*Double(radius)*Double(radius);
    }
}




//why do I have to 'circle:Circle'?
var circle:Circle = Circle(radius: 50, color: UIColor.redColor());
var square:Square = Square(width: 50, color: UIColor.blueColor());
var rectangle:Rectangle = Rectangle(width: 150, height: 100, color: UIColor.yellowColor())
var rr:RoundRectangle = RoundRectangle(width: 100, height: 30, color: UIColor.lightGrayColor(), corner_rad: 10)

//position shapes
circle.center = CGPoint(x: 100, y:100)
square.center = CGPoint(x: 100, y: 100)
rectangle.center = CGPoint(x: 150, y: 150)
rr.center = CGPoint(x: 100, y: 100)

//create a view to put your shapes on
let view = UIView(frame: CGRect(x:0, y:0, width: 320, height: 320))
XCPShowView("Shapes!", view)

//view.addSubview(circle)
//view.addSubview(square)
//view.addSubview(rectangle)
view.addSubview(rr)





/*
var cir = Circle(radius: 5, color: UIColor.redColor());
cir

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



*/
