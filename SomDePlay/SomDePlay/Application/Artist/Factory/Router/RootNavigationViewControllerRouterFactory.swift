//
//  RootNavigationViewControllerRouterFactory.swift
//  SomDePlay
//
//  Created by Lazaro Lima on 28/11/2017.
//  Copyright © 2017 Lazaro Lima. All rights reserved.
//

import UIKit

struct RootNavigationViewControllerRouterFactory {
    
    static func make(window: UIWindow) -> ArtistRouter {
        return ArtistNavigationViewControllerRouter(window: window)
    }
    
}

