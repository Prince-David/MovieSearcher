//
//  HttpError.swift
//  MovieSearcher
//
//  Created by David on 7/31/22.
//

import Foundation
enum HTTPError: Error {
    case urlFailed
    case noData
    case requestError
    case parsingFailed
}
