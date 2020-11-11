import UIKit

/* This extension of Integer allows you to run a closure a specified amount of times */

extension Int {
    
    func times(_ action: () -> Void) {
        if self >= 0 {
            for _ in 0..<self {
                action()
            }
        } else {
            print("Error: Integer must be positive in order to run closure")
        }
    }
    
}

/* Times Extension Test*/
5.times { print("hello") } // prints "hello" 5 times

let count = -5
count.times { print("hello") }
