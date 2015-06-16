//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
//var one = 1;
var fizz = "Fizz"
var buzz = "Buzz"
println(fizz + buzz)
println("Hello my first name is \(fizz), and my last name is \(buzz)")

for var counter = 1; counter <= 100; ++counter {
    if(!counter%3 && !counter%5){
        println("FizzBuzz")
    }
    else if(!counter%3){
        println("Fizz")
    }
    else if(!counter%5){
        println("Buzz")
    }
    else {
        println(counter)
    }
}

//var ugh = "ugh"
