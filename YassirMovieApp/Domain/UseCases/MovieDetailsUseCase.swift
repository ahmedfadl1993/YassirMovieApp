//
//  MovieDetailsUseCase.swift
//  YassirMovieApp
//
//  Created by Ahmed Fadl on 10/08/2023.
//

import Foundation
import Combine

protocol MovieDetailsUseCaseProtocol: AnyObject {
    func execute(movieId: String) -> AnyPublisher<MovieDetailsModel?, APIError>
}

final class MovieDetailsUseCase: MovieDetailsUseCaseProtocol {
    
    private let movieDetalisRepo: MovieDetailsRepositoryProtocol
    var subscriber = Cancelable()
    
    init(movieDetalisRepo: MovieDetailsRepositoryProtocol = DIContainer.shared.inject(type: MovieDetailsRepositoryProtocol.self)!) {
        self.movieDetalisRepo = movieDetalisRepo
    }
    
    func execute(movieId: String) -> AnyPublisher<MovieDetailsModel?, APIError> {
        return self.movieDetalisRepo.data(movieId: movieId)
    }
}
