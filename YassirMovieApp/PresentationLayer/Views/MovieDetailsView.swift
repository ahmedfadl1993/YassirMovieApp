//
//  MovieDetailsView.swift
//  YassirMovieApp
//
//  Created by Ahmed Fadl on 10/08/2023.
//

import SwiftUI

struct MovieDetailView: View {
    @StateObject private var viewModel = MovieDetailsViewModel()
    let movieID: String
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            if let imageURL  = viewModel.movie?.imageURL {
                AsyncImage(url: imageURL) { image in
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                        } placeholder: {
                            Color.gray
                        }
                        .frame(height: 300)
                        .mask(RoundedRectangle(cornerRadius: 16))
            }
            
            Text(viewModel.movie?.title ?? "" )
                .font(.title)
        
            Text("Release Date: \(viewModel.movie?.releaseDate ?? "" )")
                .font(.subheadline)
            
            Text("Overview:")
                .font(.headline)
            
            Text(viewModel.movie?.overview ?? "")
                .font(.body)
                .multilineTextAlignment(.leading)
                .lineLimit(nil)
            
            Spacer()
        }
        .padding(20)
        .navigationBarTitle(Text(viewModel.movie?.originalTitle ?? ""), displayMode: .inline)
        .onAppear {
            viewModel.fetchMovieBy(id: movieID)
        }
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(movieID: "44142")
    }
}
