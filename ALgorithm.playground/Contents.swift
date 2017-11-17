
import UIKit

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 ++++++++++++++++++++++++++++++     BINARY SEARCH       ++++++++++++++++++++++++++++++
 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

var numbers = [1,4,8,15,19,23,31,37,40,56,64,78,79,85,90,96,100]

func binarySearch (searchValue: Int, from: [Int]) -> Bool {
    
    var leftIndex = 0
    var rightIndex = numbers.count - 1
    
    while leftIndex <= rightIndex {
        
        // get middle index
        let middleIndex = (leftIndex + rightIndex) / 2
        // get middle number
        let middleNumber = numbers[middleIndex]
        
        // check if search number is equal middle number
        if searchValue == middleNumber {
            return true
        }
        
        // if search value less than middle number
        if searchValue < middleNumber  {
            // set right index
            rightIndex = middleIndex - 1
        }
        
        // if search value greater than middle value
        if middleNumber < searchValue {
            // set left index
            leftIndex = middleIndex + 1
        }
    }
    return false
}

print(binarySearch(searchValue: 15, from: numbers))

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 ++++++++++++++++++++++++++++++  Factorial & Recursive  ++++++++++++++++++++++++++++++
 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

func factorial(value: UInt) -> UInt {
    
    // if value is 0, then return 1 (factorial of 0 is 1)
    if value == 0 {
        return 1
    }
    
    var factorialNumber : UInt = 1
    for i in 1...value {
        factorialNumber = factorialNumber * i
    }
    return factorialNumber
}

print("factorial number is \(factorial(value: 4))")

func recursiveFactorial(value: Int) ->Int {
    
    // if value is 0, then return 1 (factorial of 0 is 1)
    if value == 0 {
        return 1
    }
    return value * recursiveFactorial(value: value - 1)
}

print("recursive factorial number is \(recursiveFactorial(value: 6))")
