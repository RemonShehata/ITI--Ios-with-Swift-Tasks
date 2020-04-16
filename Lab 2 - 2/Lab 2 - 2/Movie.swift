//
//  Movie.swift
//  Lab 2 - 2
//
//  Created by Remon Gerges Shehata on 12/20/19.
//  Copyright © 2019 Remon Gerges Shehata. All rights reserved.
//


import Foundation

class Movie {
var title : String
var image : String
var rating : Float
var releaseYear : Int
var genre : Array<String>
    
    init(title: String, image: String, rating : Float, releaseYear: Int, genre: Array<String>) {
        
        self.title = title
        self.image = image
        self.rating = rating
        self.releaseYear = releaseYear
        self.genre = genre
    }
}
