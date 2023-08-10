//
//  NavigationRouter.swift
//  YassirMovieApp
//
//  Created by Ahmed Fadl on 09/08/2023.
//

import Foundation
import SwiftUI

public protocol NavigationRouter {
    
    associatedtype V: View

    var transition: NavigationTranisitionStyle { get }
    
    /// Creates and returns a view of assosiated type
    ///
    @ViewBuilder
    func view() -> V
}
