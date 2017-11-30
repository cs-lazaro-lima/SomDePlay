//
//  ArtistViewButtonFactory.swift
//  SomDePlay
//
//  Created by Lázaro Lima dos Santos on 30/11/17.
//  Copyright © 2017 Lazaro Lima. All rights reserved.
//

import UIKit

struct ArtistViewButtonFactory {
    static func make(image: String) -> UIButton {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setBackgroundImage(UIImage(named: image), for: UIControlState.normal)
        return button
    }
}
