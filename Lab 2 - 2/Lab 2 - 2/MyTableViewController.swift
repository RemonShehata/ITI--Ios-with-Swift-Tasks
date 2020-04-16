//
//  MyTableViewController.swift
//  Lab 2 - 2
//
//  Created by Remon Gerges Shehata on 12/20/19.
//  Copyright © 2019 Remon Gerges Shehata. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {
    
    var movies : [Movie]?

    override func viewDidLoad() {
        super.viewDidLoad()

        let m1 = Movie(title: "movie1", image: "img1", rating: 1.5, releaseYear: 2001, genre: ["comdey","action"])
        
        let m2 = Movie(title: "movie2", image: "img2", rating: 2.5, releaseYear: 2002, genre: ["comdey","action"])
        
        movies = [m1,m2]
        
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movies!.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = movies![indexPath.row].title
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
            let detailsVC : ViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "details") as! ViewController

        detailsVC.recievedMovie = movies![indexPath.row]
        
        self.navigationController?.pushViewController(detailsVC, animated: true)

    }

}
