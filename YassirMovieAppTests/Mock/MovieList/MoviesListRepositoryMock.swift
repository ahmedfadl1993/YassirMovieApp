//
//  MoviesListRepositoryMock.swift
//  YassirMovieAppTests
//
//  Created by Ahmed Fadl on 09/08/2023.
//

import Foundation
import Foundation
import Combine
@testable import YassirMovieApp

final class MoviesListRepositoryMock: MoviesRepositoryProtocol {
    let mockRepoService = MoviesListRemoteMock()

    func data() -> AnyPublisher<YassirMovieApp.MoviesModel?, YassirMovieApp.APIError> {
        return mockRepoService.fetchedResult
    }
}
