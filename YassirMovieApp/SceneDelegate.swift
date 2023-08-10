//
//  SceneDelegate.swift
//  YassirMovieApp
//
//  Created by Ahmed Fadl on 09/08/2023.
//

import Foundation

import UIKit
final class SceneDelegate: NSObject, UIWindowSceneDelegate {
        
    private let coordinator: Coordinator<MoviesRouter> = .init(startingRoute: .moviesList)
    
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        DIContainer.shared.registration()
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = coordinator.navigationController
        window?.makeKeyAndVisible()
        coordinator.start()
    }
}
