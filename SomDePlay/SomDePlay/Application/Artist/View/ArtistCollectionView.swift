//
//  ArtistCollectionView.swift
//  SomDePlay
//
//  Created by Lazaro Lima on 28/11/2017.
//  Copyright © 2017 Lazaro Lima. All rights reserved.
//

import UIKit

class ArtistCollectionView: UIView {

    init(parentView: UIView) {
        super.init(frame: .zero)
        setupView(parentView: parentView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("Deu ruim")
    }
    
    private func setupView(parentView: UIView) {
        backgroundColor = .background
        parentView.addSubview(self)
        translatesAutoresizingMaskIntoConstraints = false
        let safeArea = parentView.safeAreaLayoutGuide
        topAnchor.constraint(equalTo: safeArea.topAnchor).isActive = true
        trailingAnchor.constraint(equalTo: parentView.trailingAnchor).isActive = true
        bottomAnchor.constraint(equalTo: safeArea.bottomAnchor).isActive = true
        leadingAnchor.constraint(equalTo: parentView.leadingAnchor).isActive = true
    }
}
