//
//  GetMovieDetailsRemote.swift
//  YassirMovieApp
//
//  Created by Ahmed Fadl on 09/08/2023.
//

import Foundation
import Combine

protocol MovieDetailsRemoteProtocol: AnyObject {
    func fetchMovieBy(id: String) -> AnyPublisher<MovieDetailsModel?, APIError>
}

final class MovieDetailsRemote: NetworkClientManager<HttpRequest>, MovieDetailsRemoteProtocol {
    func fetchMovieBy(id: String) -> AnyPublisher<MovieDetailsModel?, APIError> {
        self.request(request: HttpRequest(request: MovieDetailsRequest(moviedID: id)),
                     scheduler: WorkScheduler.mainScheduler,
                     responseObject: MovieDetailsModel?.self)
    }
}

struct MovieDetailsRequest: NetworkTarget {
    let moviedID: String
    
    init(moviedID: String) {
        self.moviedID = moviedID
    }
    
    var apiKey: String {
        return "261478a7e8caaa4b366d6f31b44c57f2"
    }
    
    var baseURL: BaseURLType {
        return .baseApi
    }

    var version: VersionType {
        return .none
    }

    var path: String? {
        return  "movie/\(moviedID)"
    }

    var methodType: HTTPMethod {
        .get
    }

    var queryParams: [String: String]? {
        return [:]
    }

    var queryParamsEncoding: URLEncoding? {
        return .default
    }
}
