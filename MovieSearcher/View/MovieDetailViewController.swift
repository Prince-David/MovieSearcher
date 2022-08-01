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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblTitle.text = viewModel?.details?.title
        print(viewModel?.details?.title ?? "None")
        
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
