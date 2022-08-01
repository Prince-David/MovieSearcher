//
//  ViewController.swift
//  MovieSearcher
//
//  Created by David on 7/30/22.
//

import UIKit

class SearchViewController: UIViewController {

    private var viewModel = MovieDetailViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewModel.detailsLoaded = { [weak self] (_, success) in
            if success {
                print(self?.viewModel.details ?? "none")
            } else {

            }
        }
    }


}

