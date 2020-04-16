//
//  MoviesListTableViewController.swift
//  Lab 6 - 1
//
//  Created by Remon Gerges Shehata on 12/23/19.
//  Copyright © 2019 Remon Gerges Shehata. All rights reserved.
//

import UIKit
import SDWebImage

class MoviesListTableViewController: UITableViewController {
    
    var movies = [Movie]()
    var currentMovie : Movie?
    var tappedMovie : Movie?

    override func viewDidLoad() {
        super.viewDidLoad()

        let url = URL(string: "https://api.androidhive.info/json/movies.json")
         let request = URLRequest(url: url!)
         let session = URLSession(configuration: URLSessionConfiguration.default)
//        UIApplication.shared.isNetworkActivityIndicatorVisible = true
        
         let task = session.dataTask(with: request) { (data, response, error) in
             
             do{
                 //let json = try JSONSerialization.jsonObject(with: data!, options: .allowFragments) as! Array<Dictionary<String, Any>>
                
                let jsonArray = try JSONSerialization.jsonObject(with: data!, options: .allowFragments) as! Array<Dictionary<String, Any>>
                 
//                 let dict = json[0]
//                 print(dict["title"]
                
                for jsonDict in jsonArray {
                    
                    let jsonMovie : Movie = Movie(title: jsonDict["title"] as! String,
                                                  image: jsonDict["image"] as! String,
                                                  rating: jsonDict["rating"] as! Double,
                                                  releaseYear: jsonDict["releaseYear"] as! Int,
                                                  genre: jsonDict["genre"] as! Array<String>)
                    
                    self.movies.append(jsonMovie)
                    
                }
                 
                 DispatchQueue.main.async {
                    self.tableView.reloadData()
                    
//                     self.myLabel.text = dict["title"]! as! String
//                     UIApplication.shared.isNetworkActivityIndicatorVisible = false
                 }
                 
             }catch let error{
                 print("Json Error")
                 print(error)
             }
             
         }.resume()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return movies.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        currentMovie = movies[indexPath.row]
        cell.textLabel?.text = currentMovie?.title
        
        cell.imageView?.sd_setImage(with: URL(string: currentMovie!.image), placeholderImage:UIImage(named: "placeholder.png"))
        
        
        //
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tappedMovie = movies[indexPath.row]
        performSegue(withIdentifier: "mySegue", sender: self)
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailsVC = segue.destination as! MovieDetailsViewController
        detailsVC.detailsMovie = tappedMovie
    }
 
    
}
