//
//  HttpMethod.swift
//  MovieSearcher
//
//  Created by David on 7/31/22.
//

import Foundation
public struct HTTPMethod: RawRepresentable, Equatable, Hashable {
    public static let get = HTTPMethod(rawValue: "GET")
    public static let post = HTTPMethod(rawValue: "POST")

    public let rawValue: String

    public init(rawValue: String) {
        self.rawValue = rawValue
    }
}
