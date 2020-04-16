//
//  MovieDetailsViewController.swift
//  Lab 6 - 1
//
//  Created by Remon Gerges Shehata on 12/23/19.
//  Copyright © 2019 Remon Gerges Shehata. All rights reserved.
//

import UIKit
import Cosmos

class MovieDetailsViewController: UIViewController {

    @IBOutlet weak var imgImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var rattingStars: CosmosView!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    
    
    var detailsMovie : Movie?
    var genresToPrint : String = ""
    
    
    @IBAction func dismissview(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        imgImageView.sd_setImage(with:
            URL(string: detailsMovie!.image), placeholderImage:UIImage(named: "placeholder.png"))
        titleLabel.text = detailsMovie?.title
        rattingStars.rating = detailsMovie!.rating
        yearLabel.text = String(detailsMovie!.releaseYear)
        
        for g in detailsMovie!.genre
        {
            genresToPrint.append(g)
            genresToPrint.append("\n")
        }
        
        genreLabel.text = genresToPrint
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
