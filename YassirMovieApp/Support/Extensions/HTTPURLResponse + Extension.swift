//
//  HTTPURLResponse + Extension.swift
//  YassirMovieApp
//
//  Created by Ahmed Fadl on 09/08/2023.
//

import Foundation

extension HTTPURLResponse {
    var isResponseOK: Bool {
        return (200..<299).contains(statusCode)
    }
}
