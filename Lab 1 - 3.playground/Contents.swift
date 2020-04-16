//: Playground - noun: a place where people can play

import UIKit


func sortArray (unsortedArray: inout [Int])
{
    let numOfElements = unsortedArray.count
    for i in 0...numOfElements
    {
        for j in i+1...numOfElements
        {
            if unsortedArray[j] < unsortedArray[i]
            {
                swapInts(a: &unsortedArray[j], b: &unsortedArray[i])
            }
        }
        
    }
}


func swapInts (a: inout Int, b: inout Int)
{
    let temp : Int = a
    a = b
    b = temp
}

var arr = [5,10,3]
sortArray(unsortedArray: &arr)

for element in arr
{
    print("\(element)")
}


