//
//  FibonacciSequence.swift
//  FibApp
//
//  Created by Regan Hsu on 7/2/15.
//  Copyright (c) 2015 Regan Hsu. All rights reserved.
//

import Foundation

class FibonacciSequence {
    
    let includesZero: Bool
    let values: [UInt]
    
    func overflow(nItems: UInt, includeZero: Bool) -> Bool {
        
        //can I do this? I forget...
        var fibonacciSequence = FibonacciSequence(numberOfItemsInSequence:nItems, includesZero:includesZero);
        
        return false
    }
    
    
    init(maxNumber: UInt, includesZero: Bool) {
        self.includesZero = includesZero
        
        //store fib sequenc into here before setting values
        var seq = [UInt]()
        if(includesZero) {
            seq = [0];
        } else {
            seq = [];
        }
        
        var val:UInt = 0;
        for var i:Int = 0; val < maxNumber; ++i {
            if(i == 0) {
                val = 1;
                seq.append(1)
            }
            else if(seq.count == 1) {
                val = 1;
                seq.append(1)
            }
            else {
                val = seq[i-1] + (includesZero ? seq[i] : seq[i-2])
                seq.append(val)
            }
            
        }
        
        self.values = seq
        
        //TODO: Create an array which contains the numbers in the Fibonacci sequence, but don't add any numbers to the array which exceed the maxNumber. For example, if the maxNumber is 10 then the array should contain [0,1,1,2,3,5,8] because the next number is 13 which is higher than the maxNumber. If includesZero is false then you should not include the number 0 in the sequence.
    }
    
    init(numberOfItemsInSequence: UInt, includesZero: Bool) {
        self.includesZero = includesZero
        
        
        
        //store fib sequenc into here before setting values
        var seq = [UInt]()
        //initialize array
        if(includesZero) {
            seq = [0];
        } else {
            seq = [];
        }
        
        var val = 0;
        for var i:Int = 0; i < Int(numberOfItemsInSequence); i++ {
            if(i == 0 && seq.count == 0) {
                seq.append(1)
            } else if (i == 0 && seq[0] == 0) {
                seq.append(1)
            } else if (i == 1 && seq.count == 1) {
                seq.append(1)
            } else {
                let(sum, didOverFlow) = UInt.addWithOverflow(seq[i-1], (includesZero ? seq[i] : seq[i-2]))
                if(didOverFlow == false) {
                    seq.append(seq[i-1] + (includesZero ? seq[i] : seq[i-2]))
                } else {
                    //appending signal 4 will indicate that overflow occured
                    seq.append(4)
                    println("The next number in the fib sequence will cause the program to crash :(")
                    self.values = seq;
                    return
                }
            }
            
        }
        
        self.values = seq;
        
        //TODO: Create an array which contains the numbers in the Fibonacci sequence, and the array should contain this many items: numberOfItemsInSequence. For example, if numberOfItemsInSequence is 10 then the array should contain [0,1,1,2,3,5,8,13,21,34] if inlcudesZero is true, or [1,1,2,3,5,8,13,21,34,55] if includesZero is false.
    }
}