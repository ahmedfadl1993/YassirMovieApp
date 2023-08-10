//
//  MovieDetailsRepository.swift
//  YassirMovieApp
//
//  Created by Ahmed Fadl on 10/08/2023.
//

import Foundation
import Combine
protocol MovieDetailsRepositoryProtocol {
    func data(movieId: String) -> AnyPublisher<MovieDetailsModel?, APIError>
}

final class MovieDetailsRepository {
    private let service: MovieDetailsRemoteProtocol
    
    init(service: MovieDetailsRemoteProtocol = DIContainer.shared.inject(type: MovieDetailsRemoteProtocol.self)!) {
        self.service = service
    }
}

extension MovieDetailsRepository: MovieDetailsRepositoryProtocol {
    func data(movieId: String) -> AnyPublisher<MovieDetailsModel?, APIError> {
        return self.service.fetchMovieBy(id: movieId)
    }
}
