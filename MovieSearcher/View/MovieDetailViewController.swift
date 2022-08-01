//
//  MovieDetailViewController.swift
//  MovieSearcher
//
//  Created by David on 7/31/22.
//

import UIKit

class MovieDetailViewController: UIViewController {
    var viewModel: MovieDetailViewModel?
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var imgPoster: UIImageView!
    @IBOutlet weak var lblRuntime: UILabel!
    @IBOutlet weak var lblYear: UILabel!
    @IBOutlet weak var lblRated: UILabel!
    @IBOutlet weak var lblMetascore: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblTitle.text = viewModel?.details?.title
        if let runTime = viewModel?.details?.runtime {
            lblRuntime.text = "Runtime: " + runTime
        }
        lblYear.text = viewModel?.details?.year
        if let rating = viewModel?.details?.rated {
            lblRated.text = "Rated " + rating
        }
        if let score = viewModel?.details?.metaScore {
            lblMetascore.text = "Metascore " + score
        }
        
        guard let posterURL = viewModel?.details?.poster else {
            return
        }
        
        guard let url = URL(string: posterURL) else {
            return
        }
        if let data = try? Data(contentsOf: url) {
            imgPoster.image = UIImage(data: data)
        }
    }
}
