//
//  MockNetworkTarget.swift
//  YassirMovieAppTests
//
//  Created by Ahmed Fadl on 09/08/2023.
//

import Foundation

import Foundation
@testable import YassirMovieApp

class MockNetworkTarget: NetworkTarget {
    var apiKey: String = "" 
    
    var baseURL: BaseURLType = .baseApi
    
    var version: VersionType = .v1
    
    var path: String? = "/path"
    
    var methodType: HTTPMethod = .get
    
    var queryParams: [String : String]? = ["test": "test"]
    
    var queryParamsEncoding: URLEncoding? = .default
}
