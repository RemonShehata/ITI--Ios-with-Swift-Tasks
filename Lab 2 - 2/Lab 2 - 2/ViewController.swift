//
//  ViewController.swift
//  Lab 2 - 2
//
//  Created by Remon Gerges Shehata on 12/20/19.
//  Copyright © 2019 Remon Gerges Shehata. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var recievedMovie : Movie?
    
    
    @IBOutlet weak var imageImageView: UIImageView!
    @IBOutlet weak var imageLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var generLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = recievedMovie?.title
        imageLabel.text = recievedMovie?.image
        ratingLabel.text = String(describing: recievedMovie!.rating)
        yearLabel.text = String(describing: recievedMovie!.releaseYear)
        let genres = recievedMovie!.genre
        var concatGenres : String = ""
        for g in genres {
            concatGenres += g + ", "
        }
        generLabel.text = concatGenres
        
    }
}

