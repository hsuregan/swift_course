// Thinkful Playground
// Thinkful.com

// Fibonacci Sequence

// By definition, the first two numbers in the Fibonacci sequence are 1 and 1, or 0 and 1, depending on the chosen starting point of the sequence, and each subsequent number is the sum of the previous two.

import UIKit


class FibonacciSequence {
    
    let includesZero: Bool
    let values: [Int]
    
    init(maxNumber: Int, includesZero: Bool) {
        self.includesZero = includesZero
        
        //store fib sequenc into here before setting values
        var seq = [Int]()
        if(includesZero) {
            seq = [0];
        } else {
            seq = [];
        }
        
        var val:Int = 0;
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
                seq[i-1]
                val = seq[i-1] + (includesZero ? seq[i] : seq[i-2])
                seq.append(val)
            }
            
        }
        
        self.values = seq
        
        //TODO: Create an array which contains the numbers in the Fibonacci sequence, but don't add any numbers to the array which exceed the maxNumber. For example, if the maxNumber is 10 then the array should contain [0,1,1,2,3,5,8] because the next number is 13 which is higher than the maxNumber. If includesZero is false then you should not include the number 0 in the sequence.
    }
    
    init(numberOfItemsInSequence: Int, includesZero: Bool) {
        self.includesZero = includesZero
        
        
        
        //store fib sequenc into here before setting values
        var seq = [Int]()
        if(includesZero) {
            seq = [0];
        } else {
           seq = [];
        }
        
        var val = 0;
        for var i:Int = 0; i < numberOfItemsInSequence; i++ {
            if(i == 0 && seq.count == 0) {
                seq.append(1)
            } else if (i == 0 && seq[0] == 0) {
                seq.append(1)
            } else if (i == 1 && seq.count == 1) {
                seq.append(1)
            } else {
                seq.append(seq[i-1] + (includesZero ? seq[i] : seq[i-2]))
            }
        
        }
    
        self.values = seq;
    
        //TODO: Create an array which contains the numbers in the Fibonacci sequence, and the array should contain this many items: numberOfItemsInSequence. For example, if numberOfItemsInSequence is 10 then the array should contain [0,1,1,2,3,5,8,13,21,34] if inlcudesZero is true, or [1,1,2,3,5,8,13,21,34,55] if includesZero is false.
    }
}

let fibanocciSequence = FibonacciSequence(maxNumber:12345, includesZero: true)

let anotherSequence = FibonacciSequence(numberOfItemsInSequence: 13, includesZero: false)
