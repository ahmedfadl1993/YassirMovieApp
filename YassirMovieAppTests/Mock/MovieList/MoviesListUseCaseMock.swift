//
//  MoviesListUseCaseMock.swift
//  YassirMovieAppTests
//
//  Created by Ahmed Fadl on 09/08/2023.
//

import Foundation
import Combine
@testable import YassirMovieApp

final class MoviesListUseCaseMock: DefaultMoviesUseCaseProtocol {
    let mockMoviesRepo = MoviesListRepositoryMock()
    func execute() -> AnyPublisher<YassirMovieApp.MoviesModel?, YassirMovieApp.APIError> {
        return mockMoviesRepo.data()
    }
    
}
