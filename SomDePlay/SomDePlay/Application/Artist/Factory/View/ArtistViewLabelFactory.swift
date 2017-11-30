//
//  ArtistViewLabelFactory.swift
//  SomDePlay
//
//  Created by Lázaro Lima dos Santos on 29/11/17.
//  Copyright © 2017 Lazaro Lima. All rights reserved.
//

import UIKit

struct ArtistViewLabelFactory {
    static func make() -> UILabel {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 23, weight: .medium)
        label.textColor = .text
        label.textAlignment = .center
        return label
    }
}
