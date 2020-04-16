//
//  Movie.swift
//  Lab 6 - 1
//
//  Created by Remon Gerges Shehata on 12/23/19.
//  Copyright © 2019 Remon Gerges Shehata. All rights reserved.
//

import Foundation
import UIKit

class Movie {
var title : String
var image : String
var rating : Double
var releaseYear : Int
var genre : Array<String>
    
    init(title: String, image: String, rating : Double, releaseYear: Int, genre: Array<String>) {
        
        self.title = title
        self.image = image
        self.rating = rating
        self.releaseYear = releaseYear
        self.genre = genre
    }
}
