//
//  AppDependencyContainer + Injection.swift
//  YassirMovieApp
//
//  Created by Ahmed Fadl on 09/08/2023.
//

import Foundation

extension DIContainer {
    func registration() {
        // Movies Market
        register(type: MoveisRemoteProtocol.self, component: MoviesRemote())
        register(type: MoviesRepositoryProtocol.self, component: MoviesRepository())
        register(type: MoviesUseCaseProtocol.self, component: MoviesUseCase())
        
        // Movies Details Market
        register(type: MovieDetailsRemoteProtocol.self, component: MovieDetailsRemote())
        register(type: MovieDetailsRepositoryProtocol.self, component: MovieDetailsRepository())
        register(type: MovieDetailsUseCaseProtocol.self, component: MovieDetailsUseCase())
    }
}
