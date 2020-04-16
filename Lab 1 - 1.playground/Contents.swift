//: Playground - noun: a place where people can play

import UIKit

func getFact(num:Int) ->(Int){
    
    if num == 1 {
        return 1
    }
    
    return num * getFact(num: num - 1)
}

func getFact2(num:Int) ->(Int) {
    var fact = 1
    
    for i in 1...num {
        
        fact *= i;
    }
    return fact
}


var res2 = getFact2(num: 4)
print(res2)


var res = getFact(num: 3)
print(res)
