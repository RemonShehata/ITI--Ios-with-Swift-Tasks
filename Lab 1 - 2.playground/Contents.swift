//: Playground - noun: a place where people can play

import UIKit

func getPower(base:Int, power:Int) -> (Int) {
    var result = 1
    for _ in 1...power {
        result *= base
    }
    return result
}

func getPower2(base:Int, power:Int) -> (Int) {
    if power == 1
    {
        return base
    }
    
    return base * getPower2(base: base, power: power - 1)
}

getPower2(base: 5, power: 3)
getPower(base: 5, power: 3)
