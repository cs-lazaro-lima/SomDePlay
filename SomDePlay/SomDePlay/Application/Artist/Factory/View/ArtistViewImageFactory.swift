//
//  ArtistViewImageFactory.swift
//  SomDePlay
//
//  Created by Lázaro Lima dos Santos on 29/11/17.
//  Copyright © 2017 Lazaro Lima. All rights reserved.
//

import UIKit

struct ArtistViewImageFactory {
    static func make() -> UIImageView {
        let image = UIImageView.init(frame: .zero)
        image.translatesAutoresizingMaskIntoConstraints = false
        image.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        image.layer.borderWidth = 3.0
        image.layer.cornerRadius = 10.0
        image.clipsToBounds = true
        image.contentMode = .scaleAspectFill
        return image
    }
}

