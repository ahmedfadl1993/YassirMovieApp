//
//  GetMovieServices.swift
//  YassirMovieApp
//
//  Created by Ahmed Fadl on 09/08/2023.
//
import Foundation
import Combine

protocol MoveisRemoteProtocol: AnyObject {
    func fetchMovies() -> AnyPublisher<MoviesModel?, APIError>
}

final class MoviesRemote: NetworkClientManager<HttpRequest>, MoveisRemoteProtocol {
    func fetchMovies() -> AnyPublisher<MoviesModel?, APIError> {
        self.request(request: HttpRequest(request: MoviesRequest()),
                     scheduler: WorkScheduler.mainScheduler,
                     responseObject: MoviesModel?.self)
    }
}

struct MoviesRequest: NetworkTarget {
    
    var baseURL: BaseURLType {
        return .baseApi
    }

    var version: VersionType {
        return .none
    }

    var path: String? {
        return "trending/all/day"
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
