//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
//var one = 1;
var fizz = "Fizz"
var buzz = "Buzz"
println(fizz + buzz)
println("Hello my first name is \(fizz), and my last name is \(buzz)")

func checkValue (counter: Int) -> String {
    var ugh = ""
    if (counter%3 == 0 && counter%5 == 0){
        ugh = "FizzBuzz"
//        println("F izzBuzz \(counter)")
    }
    else if(counter%3 == 0){
        ugh = "Fizz"
//        println("Fizz")
    }
    else if(0 == counter%5){
        ugh = "Buzz"
//        println("Buzz")
    }
    else {
        ugh = String(counter)
//        println(counter)
    }
    return ugh
}

for var counter = 1; counter <= 100; ++counter {
    checkValue(counter);
}

var pop = 100000
for var counter = 0; counter < 100; counter++ {
    println(pop)
    pop = pop + Int(Double(pop)*0.007)
    pop
    //pop += pop;
    
}

var ugh = [String]()
ugh.count;
ugh.append("poop");
ugh.append("lalala");
ugh.append("toopie");
ugh.removeAtIndex(0);
ugh.append("regan");
var firstArr = [Int]();
var secondArr = [Int]();
for i in 0...100 {
    firstArr.append(i);
    if((i%2)==0){
        secondArr.append(i);
    }
}

var student = "BPBs"
switch student {
    case "Regan": println("A+");
    case "Qiuyu" : println("A");
    case "Xiaoxiao" : println("B");
    case "BPB" : println("boob");
    default : println("ugh");
};
