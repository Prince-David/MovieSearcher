//
//  DataManager.swift
//  MovieSearcher
//
//  Created by David on 7/31/22.
//

import Foundation
class DataManager {
    public static let shared = DataManager()
    var movieTitle = "Star%20Wars"
    func searchMovieTitle(success: @escaping ((MovieDetail) -> Void), fail: @escaping ((HTTPError) -> Void)) {
        ServiceManager.shared.callService(urlString: "http://www.omdbapi.com/?t=\(movieTitle)&plot=full&apikey=\(apiKey)", method: .get) { (response: MovieDetail) in
            success(response)
        } fail: { error in
            fail(error)
        }
    }
}
