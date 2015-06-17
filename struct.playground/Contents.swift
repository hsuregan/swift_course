//: Playground - noun: a place where people can play

import UIKit
import XCPlayground


//let rect = CGRect(x: 0, y: 0, width: 320, height: 320);
//let point = CGPoint(x: 0, y: 0);
//let size = CGSize(width: 320, height: 320);
//let rect = CGRect(origin: point, size: size);

//create a big rectangle
let outer_rect=CGRect(x: 0, y:0, width: 320, height: 320)
let redsquare=CGRect(x: 0, y: 0, width: 100, height: 100)

let view = UIView(frame:outer_rect)
let view_red_sq=UIView(frame: redsquare)
view_red_sq.backgroundColor = UIColor.redColor()

view.addSubview(view_red_sq)
XCPShowView("Thislk poop the title!", view)
