//
//  ViewController.swift
//  MovieSearcher
//
//  Created by David on 7/30/22.
//

import UIKit

class SearchViewController: UIViewController {

    private var viewModel = MovieDetailViewModel()
    @IBOutlet weak var textTitle: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewModel.detailsLoaded = { [weak self] (_, success) in
            if success {
                print(self?.viewModel.details ?? "none")
                let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
                let vc = storyBoard.instantiateViewController(withIdentifier: "detailView") as! MovieDetailViewController
                vc.viewModel = self?.viewModel
                self?.navigationController?.pushViewController(vc, animated: true)
            } else {

            }
        }
    }

    @IBAction func tapSearch(_ sender: Any) {
        if let title = textTitle.text {
            let titleSearchString = title.replacingOccurrences(of: " ", with: "%20")
            viewModel.callService(title: titleSearchString )
        }
    }
    
}

