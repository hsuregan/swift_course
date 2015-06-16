//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Person {
    var name:String
    var gender:String
    var profession:String
    var location:String
    var age:Int
    var partner:Person?
 
    init(name:String, gender:String, profession:String, location:String, age:Int){
        self.age = age
        self.name = name
        self.gender = gender
        self.profession = profession
        self.location = location
    }

    
    func createRelationship(partner:Person){
        self.partner=partner
    }
    
    func displayRelationshipMessage() {
        if let partner = partner {
            println("\(name) is in a relationship with \(partner.name)")
        }
        else {
            println("\(name) is single.");
        }
//        if partner != nil {
//            println("\(name) is in a relationship with \(partner!.name)")
//        }
    }
}

let peter = Person(name: "Peter", gender: "Male", profession: "Software Developer", location: "New York City", age: 20);
let amy = Person(name: "Amy", gender: "Female", profession: "News Reporter", location: "NYC", age: 50);
peter.createRelationship(amy);
amy.createRelationship(peter);
peter.displayRelationshipMessage();
amy.displayRelationshipMessage();


