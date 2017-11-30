//
//  SerachArtistNavigationRouter.swift
//  SomDePlay
//
//  Created by Lazaro Lima on 30/11/2017.
//  Copyright © 2017 Lazaro Lima. All rights reserved.
//

import Foundation
import UIKit

final class SerachArtistNavigationRouter: SerachArtistRouter {
    
    private let window: UIWindow
    private weak var artistViewController: SerachArtistViewController?
    private let navigationController: UINavigationController
    
    init(window: UIWindow) {
        self.window = window
        artistViewController = SerachArtistViewControllerFactory.make()
        navigationController = UINavigationController(rootViewController: self.artistViewController!)
    }
    
    func root() {
        artistViewController?.serachArtistRouter = self
        navigationController.navigationBar.barTintColor = .navigation
        navigationController.navigationBar.barStyle = .black
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}
