//
//  MoviesRequestTest.swift
//  YassirMovieAppTests
//
//  Created by Ahmed Fadl on 09/08/2023.
//

import Foundation
import XCTest
@testable import YassirMovieApp

final class MoviesRequestTest: XCTestCase {

    var sut: NetworkTarget!

    override func setUp() {
        sut = DummyTarget()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func testNetworkTarget_WhenBaseURl_ShouldReturnString() {
        XCTAssertTrue(sut.baseURL.desc as Any is URL)
    }
    
    func testNetworkTarget_WhenBaseURl_ShouldReturnURL() {
        XCTAssertEqual(sut.baseURL.desc, "https://api.themoviedb.org/3/")
    }
    
    func testNetworkTarget_WhenVersion_ShouldReturnString() {
        XCTAssertTrue(sut.version.desc as Any is String)
    }
    
    func testNetworkTarget_WhenVersion_ShouldReturnVersion() {
        XCTAssertEqual(sut.version.desc, "/v1")
    }
    
    func testNetworkTarget_WhenPath_ShouldBeRequestType() {
        XCTAssertTrue(sut.path as Any is String)
    }
    
    func testNetworkTarget_WhenPath_ShouldReturnPath() {
        XCTAssertEqual(sut.path, "test/test")
    }

    func testNetworkTarget_WhenMethod_ShouldReturnType() {
        XCTAssertEqual(sut.methodType, .get)
    }
    
    func testNetworkTarget_QueryParam_ShouldReturnType() {
        XCTAssertEqual(sut.queryParamsEncoding, .default)
    }
}
