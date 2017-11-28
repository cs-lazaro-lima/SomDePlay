//
//  ArtistNavigationViewControllerRouter.swift
//  SomDePlay
//
//  Created by Lazaro Lima on 28/11/2017.
//  Copyright © 2017 Lazaro Lima. All rights reserved.
//

import Foundation
import UIKit

final class ArtistNavigationViewControllerRouter: ArtistRouter {
    
    private let window: UIWindow
    private weak var artistViewController: ArtistViewController?
    private let navigationController: UINavigationController
    
    init(window: UIWindow) {
        self.window = window
        artistViewController = ArtistViewControllerFactory.make()
        navigationController = UINavigationController(rootViewController: self.artistViewController!)
    }
    
    func root() {
        artistViewController?.artistRouter = self
        navigationController.navigationBar.tintColor = .navigation
        navigationController.navigationController?.title = String.NavigationTitle.artist
        window.backgroundColor = .background
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }    
}
