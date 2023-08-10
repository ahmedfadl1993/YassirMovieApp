//
//  Configuration.swift
//  YassirMovieApp
//
//  Created by Ahmed Fadl on 07/08/2023.
//

import Foundation

enum BaseURLType {
    case baseApi
    case images

    var desc: String {
        switch self {
        case .baseApi:
            return "https://api.themoviedb.org/3/"
        case .images:
            return "http://image.tmdb.org/t/p/w500"
        }
    }
}

enum VersionType {
    case none
    case v1, v2, v3
    var desc: String {
        switch self {
        case .none:
            return ""
        case .v1:
            return "/v1"
        case .v2:
            return "/v2"
        case .v3:
            return "/v3"
        }
    }
}
