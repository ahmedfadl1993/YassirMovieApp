//
//  MovieDetailsViewModel.swift
//  YassirMovieApp
//
//  Created by Ahmed Fadl on 10/08/2023.
//

import Foundation
import Combine

class MovieDetailsViewModel: ObservableObject {
    @Published var movie: MovieDetailsModel?
    @Published var error: APIError?
    private let movieDetailsUseCase: MovieDetailsUseCaseProtocol
    private var cancellables = Set<AnyCancellable>()
    
    init(movieDetailsUseCase: MovieDetailsUseCaseProtocol = DIContainer.shared.inject(type: MovieDetailsUseCaseProtocol.self)!) {
        self.movieDetailsUseCase = movieDetailsUseCase
    }
    
    func fetchMovieBy(id: String) {
        movieDetailsUseCase.execute(movieId: id)
            .sink { [weak self] completion in
                if case let .failure(error) = completion {
                    self?.handleError(error)
                }
            } receiveValue: { [weak self] movieModel in
                self?.movie = movieModel
            }
            .store(in: &cancellables)
        
    }
    
    private func handleError(_ error: APIError) {
        self.error = error
    }
}
