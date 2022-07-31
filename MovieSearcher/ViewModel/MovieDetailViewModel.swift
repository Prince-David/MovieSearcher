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
}
