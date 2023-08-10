//
//  BaseViewModel.swift
//  YassirMovieApp
//
//  Created by Ahmed Fadl on 09/08/2023.
//

import SwiftUI
import Combine

class BaseViewModel: ObservableObject {
    var anyCancellables = Set<AnyCancellable>()
    @Published var isLoading = false
    @Published var error: Error?

    func cancelAllRequests() {
        anyCancellables.forEach { $0.cancel() }
        anyCancellables.removeAll()
    }
    
    deinit {
        cancelAllRequests()
    }
}
