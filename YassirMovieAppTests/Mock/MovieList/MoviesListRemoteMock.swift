//
//  MoviesListRemoteMock.swift
//  YassirMovieAppTests
//
//  Created by Ahmed Fadl on 09/08/2023.
//

import Foundation
import Combine
@testable import YassirMovieApp

final class MoviesListRemoteMock: MoveisRemoteProtocol {
    var fetchedResult: AnyPublisher <YassirMovieApp.MoviesModel?, APIError>!

    func fetchMovies() -> AnyPublisher<YassirMovieApp.MoviesModel?, YassirMovieApp.APIError> {
        return fetchedResult
    }
}
