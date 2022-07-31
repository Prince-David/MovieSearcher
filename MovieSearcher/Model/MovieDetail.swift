//
//  MovieDetail.swift
//  MovieSearcher
//
//  Created by David on 7/31/22.
//

import Foundation

struct MovieDetail : Codable {
    
    let title: String
    let year: String
    let rated: String
    let runtime: String
    let plot: String
    
    enum CodingKeys: String, CodingKey {
        case title = "Title"
        case year = "Year"
        case rated = "Rated"
        case runtime = "Runtime"
        case plot = "Plot"
    }
    
}
