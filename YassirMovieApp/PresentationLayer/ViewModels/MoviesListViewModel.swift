//
//  MoviesListViewModel.swift
//  YassirMovieApp
//
//  Created by Ahmed Fadl on 09/08/2023.
//

import Foundation
import Combine

class MovieListViewModel: ObservableObject {
    @Published var movies: [MovieRowDetailsModel]?
    @Published var error: APIError?
    private let moviesUseCase: MoviesUseCaseProtocol
    private var cancellables = Set<AnyCancellable>()

    
    init(moviesUseCase: MoviesUseCaseProtocol = MoviesUseCase()) {
        self.moviesUseCase = moviesUseCase
    }
    
    func fetchMovies() {
        moviesUseCase.execute()
            .sink { [weak self] completion in
                if case let .failure(error) = completion {
                    self?.handleError(error)
                }
            } receiveValue: { [weak self] movieModel in
                self?.movies = movieModel?.results ?? []
            }
            .store(in: &cancellables)
    }
    
    private func handleError(_ error: APIError) {
        self.error = error
    }
}
