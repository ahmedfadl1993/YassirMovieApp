//
//  GetMoviesRepository.swift
//  YassirMovieApp
//
//  Created by Ahmed Fadl on 09/08/2023.
//

import Foundation
import Combine
protocol MoviesRepositoryProtocol {
    func data() -> AnyPublisher<MoviesModel?, APIError>
}

final class MoviesRepository {
    private let service: MoveisRemoteProtocol
    
    init(service: MoveisRemoteProtocol = DIContainer.shared.inject(type: MoveisRemoteProtocol.self)!) {
        self.service = service
    }
}

extension MoviesRepository: MoviesRepositoryProtocol {
    func data() -> AnyPublisher<MoviesModel?, APIError> {
        return self.service.fetchMovies()
    }
}
