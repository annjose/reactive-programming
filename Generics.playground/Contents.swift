//: Playground - noun: a place where people can play

import UIKit

// simple generics example
func tryGenerics<Input>(input: Input) -> Input {
    return input
}
tryGenerics(input: 20)

// doubleMe function that doubles the given integer
func doubleMe(input: Int) -> Int {
    return input * 2
}
doubleMe(input: 20)

// doubles all elements of a given array of Int
func doubleMe(input: [Int]) -> [Int] {
    var outputList = [Int]()
    for element in input {
        outputList.append(element * 2)
    }
    return outputList
}
let doubled = doubleMe(input: [10, 20, 30])

// mapMe function that can do any given operation on a given array of Ints
func mapMe(input: [Int], mappingFunc: ( (Int) -> Int ) ) -> [Int] {
    var output = [Int]()
    for element in input {
        let newValue = mappingFunc(element)
        output.append(newValue)
    }
    return output
}
// Use mapMe to double integers
mapMe(input: [10, 20, 30]) { (element) -> Int in
    return element * 2
}
// Use mapMe to square integers
mapMe(input: [10, 20, 30]) { (element) -> Int in
    return element * element
}

// function that converts an array of any type to an array of any other type
func mapMe<Input, Output>(input: [Input], mappingFunc: ((Input) -> Output)) -> [Output] {
    var outputList = [Output]()
    for element in input {
        outputList.append(mappingFunc(element))
    }
    return outputList
}
// Use mapMe to double the integers (Input type is Int, whereas Output type is Int)
mapMe(input: [10, 20, 30]) { (element: Int) -> Int in
    return element * 2
}
// Use mapMe to format the integers in a special way (Input type is Int, whereas Output type is String)
mapMe(input: [10, 20, 30]) { (element: Int) -> String in
    return "Hey \(element)"
}
// short-hand calling of mapMe
mapMe(input: [10, 20, 30]) {
    return $0 * 2 }
mapMe(input: [10, 20, 30]) {
    return "Hey \($0)" }
