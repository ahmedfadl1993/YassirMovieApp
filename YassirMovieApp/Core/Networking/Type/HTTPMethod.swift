//
//  HTTPMethod.swift
//  YassirMovieApp
//
//  Created by Ahmed Fadl on 09/08/2023.
//

public enum HTTPMethod: Equatable {
    case get
    case post
    case put
    case delete
     var name: String {
        switch self {
        case .get:
            return "GET"
        case .post:
            return "POST"
        case .put:
            return "PUT"
        case .delete:
            return "DELETE"
        }
    }
}
