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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblTitle.text = viewModel?.details?.title
        print(viewModel?.details?.title ?? "None")
    }
}
