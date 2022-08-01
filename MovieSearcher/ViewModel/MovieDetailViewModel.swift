//
//  MovieDetailViewModel.swift
//  MovieSearcher
//
//  Created by David on 7/31/22.
//

import Foundation

class MovieDetailViewModel {
    var details : MovieDetail?
    var detailsLoaded: ((MovieDetail?, Bool) -> Void)?
    
    func callService(title: String) {
        DataManager.shared.movieTitle = title
        DataManager.shared.searchMovieTitle {
            [weak self] response in
                self?.details = response
                self?.handleResponse(response: response, success: true)
        } fail: { [weak self] _ in
            self?.handleResponse(response: nil, success: false)
        }
    }
    
    private func handleResponse(response: MovieDetail?, success: Bool) {
        if let detailsLoaded = self.detailsLoaded {
            detailsLoaded(response, success)
        }
    }
}
