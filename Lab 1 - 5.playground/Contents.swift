//: Playground - noun: a place where people can play

import UIKit

func swap (a: inout Int, b: inout Int)
{
    let temp : Int = a
    a = b
    b = temp
}

var x = 5
var y = 10

swap(&x, &y)
print("\(x)")
print("\(y)")
