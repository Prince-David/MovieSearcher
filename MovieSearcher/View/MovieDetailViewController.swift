//
//  MovieDetailViewController.swift
//  MovieSearcher
//
//  Created by David on 7/31/22.
//

import UIKit

class MovieDetailViewController: UIViewController {
    var viewModel: MovieDetailViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(viewModel?.details?.title ?? "None")
    }
}
