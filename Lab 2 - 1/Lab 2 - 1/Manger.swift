//
//  Manger.swift
//  Lab 2 - 1
//
//  Created by Remon Gerges Shehata on 12/20/19.
//  Copyright © 2019 Remon Gerges Shehata. All rights reserved.
//

import Foundation

class Manger: Person {
    override func getSalary(s: Int) -> Int {
        return s + 1000
    }
}
