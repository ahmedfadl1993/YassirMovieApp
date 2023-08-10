//
//  MovieDetailsModel.swift
//  YassirMovieApp
//
//  Created by Ahmed Fadl on 10/08/2023.
//

import Foundation

// MARK: - Welcome
struct MovieDetailsModel: Codable {
    
    let backdropPath: String?
    let homepage: String?
    let id: Int?
    let originalTitle, overview: String?
    private let posterPath: String?
    let releaseDate: String?
    let title: String?
    var imageURL: URL? {
        return URL(string: BaseURLType.images.desc + (posterPath ?? ""))
    }

    enum CodingKeys: String, CodingKey {
        case backdropPath = "backdrop_path"
        case homepage, id
        case originalTitle = "original_title"
        case overview
        case posterPath = "poster_path"
        case releaseDate = "release_date"
        case title
    }
}
