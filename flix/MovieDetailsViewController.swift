//
//  MoviesDetailViewController.swift
//  flix
//
//  Created by hilal on 2/20/22.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {
    
   
    @IBOutlet var backdropView: UIImageView!
    @IBOutlet var posterView: UIImageView!
    var movie: [String:Any]!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var synopsisLabel: UILabel!
    
    var movies: [String:Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
           
    
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
    
        synopsisLabel.text = movie["overview"] as? String
        synopsisLabel.sizeToFit()
    
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        
        let posterUrl =  URL(string: "https://image.tmdb.org/t/p/w780" + posterPath)
        
        posterView.af_setImage(withURL: posterUrl!)
       
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: baseUrl + backdropPath)
        
        backdropView.af_setImage(withURL: backdropUrl!)
        
    }
}
