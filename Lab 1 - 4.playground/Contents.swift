//: Playground - noun: a place where people can play

import UIKit

func getMinMax(arr:[Int]) -> (min:Int, max: Int) {
    var min = arr[0]
    var max = arr[0]
    
    for element in arr
    {
        if element < min
        {
            min = element
        } else if element > max
        {
            max = element
        }
    }
    
    return(min, max)
}

getMinMax(arr: [5,3,6,7,1,4])
