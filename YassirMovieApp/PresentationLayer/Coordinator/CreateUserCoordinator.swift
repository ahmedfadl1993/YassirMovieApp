//
//  MoviesRouter.swift
//  YassirMovieApp
//
//  Created by Ahmed Fadl on 09/08/2023.
//

import Foundation
import UIKit
import SwiftUI
public enum MoviesRouter: NavigationRouter {
    case moviesList
    case movieDetails(String)
    public var transition: NavigationTranisitionStyle {
        switch self {
        case .moviesList:
            return .push
        case .movieDetails:
            return .push
        }
    }
    
    @ViewBuilder
    public func view() -> some View {
        switch self {
        case .moviesList:
            MovieListingView()
        case .movieDetails(let movieID):
            MovieDetailView(movieID: movieID)
        }
    }
}
