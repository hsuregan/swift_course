//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var randnumber:Int;

for _ in 1...100 {
    let randnumber = Int(arc4random_uniform(10))+1;
    randnumber
}




func randomNumber () {
    let randnumber = Int(arc4random_uniform(10)+1);
    let userGuess = 7;
    var word:String;
    
    
    if(randnumber == userGuess) {
        word = "you win!"
    } else {
        word = "you lose!"
    }
}

randomNumber()


func playGame() {
    let randomNumber = Int(arc4random_uniform(10)) + 1
    var userGuess = 7
    var result
    
    if(randomNumber == userGuess) {
        result = "You win"
    } else {
        result = "You lose"
    }
    
    println(result)
}https://github.com/pkprosol/SwiftDebuggingProject
