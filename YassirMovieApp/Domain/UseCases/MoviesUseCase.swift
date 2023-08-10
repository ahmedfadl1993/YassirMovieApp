//
//  MoviesUseCase.swift
//  YassirMovieApp
//
//  Created by Ahmed Fadl on 09/08/2023.
//

import Foundation
import Combine

protocol MoviesUseCaseProtocol: AnyObject {
    func execute() -> AnyPublisher<MoviesModel?, APIError>
}

final class MoviesUseCase: MoviesUseCaseProtocol {
    
    private let moviesRepository: MoviesRepositoryProtocol
    var subscriber = Cancelable()
    
    init(moviesRepository: MoviesRepositoryProtocol = DIContainer.shared.inject(type: MoviesRepositoryProtocol.self)!) {
        self.moviesRepository = moviesRepository
    }
    
    func execute() -> AnyPublisher<MoviesModel?, APIError> {
        return self.moviesRepository.data()
    }
}
