//
//  AppDelegate.swift
//  SomDePlay
//
//  Created by Lazaro Lima on 24/11/2017.
//  Copyright © 2017 Lazaro Lima. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func applicationDidFinishLaunching(_ application: UIApplication) {
        window = UIWindow(frame: UIScreen.main.bounds)        
        RootNavigationViewControllerRouterFactory.make(window: window!).root()
    }

}

