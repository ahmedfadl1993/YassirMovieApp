//
//  DummyTarget.swift
//  YassirMovieAppTests
//
//  Created by Ahmed Fadl on 09/08/2023.
//

import Foundation
@testable import YassirMovieApp

final class DummyTarget: NetworkTarget {
    var apiKey: String = ""
    
    var baseURL: BaseURLType = .baseApi
    
    var version: VersionType = .v1
    
    var path: String? = "test/test"
    
    var methodType: HTTPMethod = .get
    
    var queryParams: [String : String]? = ["item": "item"]
    
    var queryParamsEncoding: URLEncoding? = .default
}
