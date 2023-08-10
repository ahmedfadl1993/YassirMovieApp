//
//  MoviesListing.swift
//  YassirMovieApp
//
//  Created by Ahmed Fadl on 09/08/2023.
//

import Foundation
import SwiftUI

struct MovieListingView: View {
    @StateObject private var viewModel = MovieListViewModel()
    @EnvironmentObject var coordinator: Coordinator<MoviesRouter>

    var body: some View {
        NavigationView {
            Group {
                if let movies = viewModel.movies {
                    if !movies.isEmpty {
                        List(movies) { movie in
                            MovieRowView(movie: movie).onTapGesture {
                                if let movieID = movie.id {
                                    coordinator.show(.movieDetails("\(movieID)"))
                                }
                            }
                        }
                    }
                } else {
                    ProgressView()
                }
            }
            .navigationBarTitle("Movie List")
            .onAppear {
                viewModel.fetchMovies()
            }
        }
    }
}

struct MovieRowView: View {
    var movie: MovieRowDetailsModel

    var body: some View {
        HStack(spacing: 10) {
            
            AsyncImage(url: URL(string: BaseURLType.images.desc + (movie.posterPath ?? ""))) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                    } placeholder: {
                        Color.gray
                    }
                    .frame(width: 100,height: 120)
                    .mask(RoundedRectangle(cornerRadius: 16))
            VStack(alignment: .leading, spacing: 5) {
                Text(movie.originalName ?? "" )
                    .font(.headline)
                    .foregroundColor(.gray)
                Text("Release Date: \(movie.releaseDate ?? "" )")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
        .padding(10)
    }
}

struct MovieListingView_Previews: PreviewProvider {
    static var previews: some View {
        MovieListingView()
    }
}
